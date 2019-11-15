package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.entity.TvShow;
import com.wildcodeschool.pandashow.entity.User;
import com.wildcodeschool.pandashow.repository.EpisodeRepository;
import com.wildcodeschool.pandashow.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {

    private UserRepository userRepository = new UserRepository();
    private EpisodeRepository episodeRepository = new EpisodeRepository();

    @GetMapping("/sign")
    public String sign() {
        return "sign.html";
    }

    @PostMapping("/sign")
    public String userConnect(HttpSession session,
                              @RequestParam String pseudo,
                              @RequestParam String password) {

        User user = userRepository.getByUsername(pseudo, password);
        if (user == null) {
            return "redirect:/mylist";
        }
        // TODO save user in session
        session.setAttribute("currentUser", user);
        return "redirect:/mylist";
    }

    @GetMapping("/join")
    public String join() {
        return "join.html";
    }

    @PostMapping("/join")
    public String userUpdate(HttpSession session, Model model,
                             @RequestParam String pseudo,
                             @RequestParam String email,
                             @RequestParam String password
    ) {
        User user = userRepository.createUser(pseudo, email, password);
        session.setAttribute("currentUser", user);
        model.addAttribute("user", userRepository.createUser(pseudo, email, password));
        return "redirect:/mylist";
    }

    @GetMapping("/mylist")
    public String myList(HttpSession session, Model model) {

        if (session.getAttribute("currentUser") == null) {

            return "join.html";
        }

        User user = (User) session.getAttribute("currentUser");
        List<TvShow> myList = userRepository.findUserShow(user.getId());
        model.addAttribute("showList", myList);
        model.addAttribute("episodeList", null);
        model.addAttribute("nextEpisodes", episodeRepository.findNextEpisodes(user.getId(), myList));
        return "mylist.html";
    }

    @GetMapping("/add-show")
    public String addShow(HttpSession session,
                          @RequestParam Long idShow) {

        User user = (User) session.getAttribute("currentUser");
        userRepository.addUserShow(user.getId(), idShow);
        return "redirect:/mylist";
    }

    @GetMapping("/log-out")
    public String logOut(HttpSession session) {

        session.setAttribute("currentUser", null);

        return "redirect:/index";
    }

    @GetMapping("/episode-seen")
    public String episodeSeen(HttpSession session,
                              @RequestParam Long idEpisode) {

        User user = (User) session.getAttribute("currentUser");
        episodeRepository.episodeSeen(user.getId(), idEpisode);

        return "redirect:/mylist";
    }
}
