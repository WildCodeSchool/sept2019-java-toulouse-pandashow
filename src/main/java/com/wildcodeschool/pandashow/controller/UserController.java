package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.entity.Episode;
import com.wildcodeschool.pandashow.entity.TvShow;
import com.wildcodeschool.pandashow.entity.User;
import com.wildcodeschool.pandashow.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {

   private UserRepository repository = new UserRepository();


    @GetMapping("/sign")
    public String sign() {
        return "sign";
    }

    @PostMapping("/sign")
    public String userConnect(Model model,
                              @RequestParam String pseudo,
                              @RequestParam String password) {

        User user = repository.getByUsername(pseudo, password);
        if (user == null) {
            return "redirect:/sign";
        }
        model.addAttribute("user", user);
        return "redirect:/mylist";
    }

    @GetMapping("/join")
    public String join() {
        return "join";
    }

    @PostMapping("/join")
    public String userUpdate(Model model,
                             @RequestParam String pseudo,
                             @RequestParam String email,
                             @RequestParam String password
    ) {
        model.addAttribute("user", repository.createUser(pseudo, email, password));
        return "redirect:/mylist";
    }

    @GetMapping("/mylist")
    public String myList(Model model) {

        List<Episode> myList = repository.addToList();
        model.addAttribute("episodeList", myList);

        return "mylist";
    }
    public String myListShows(Model model) {

        List<TvShow> shows = repository.findAll();
        model.addAttribute("showList", shows);

        return "mylist";
    }
}




