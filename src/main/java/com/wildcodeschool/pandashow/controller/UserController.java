package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.entity.TvShow;
import com.wildcodeschool.pandashow.entity.User;
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

    private UserRepository repository = new UserRepository();

    @GetMapping("/sign")
    public String sign() {
        return "sign";
    }

    @PostMapping("/sign")
    public String userConnect(HttpSession session,
                              @RequestParam String pseudo,
                              @RequestParam String password) {

        User user = repository.getByUsername(pseudo, password);
        if (user == null) {
            return "redirect:/mylist";
        }
        // TODO save user in session
        session.setAttribute("currentUser", user);
        return "redirect:/mylist";
    }

    @GetMapping("/join")
    public String join() {
        return "join";
    }

    @PostMapping("/join")
    public String userUpdate(HttpSession session, Model model,
                             @RequestParam String pseudo,
                             @RequestParam String email,
                             @RequestParam String password
    ) {
        User user = repository.createUser(pseudo, email, password);
        session.setAttribute("currentUser", user);
        model.addAttribute("user", repository.createUser(pseudo, email, password));
        return "redirect:/mylist";
    }

    //TODO: Problème ici. Quand on se connecte on arrive sur My List
    @GetMapping("/mylist")
    public String myList(HttpSession session, Model model) {

        User user = (User) session.getAttribute("currentUser");
        List<TvShow> myList = repository.findUserShow(user.getId());
        model.addAttribute("showList", myList);
        model.addAttribute("episodeList", null);

        return "mylist";
    }
}
