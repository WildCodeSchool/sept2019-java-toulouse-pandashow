package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.entity.User;
import com.wildcodeschool.pandashow.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SignInController {

    private UserRepository repository = new UserRepository();

    @GetMapping("/sign")
    public String sign() {
        return "sign";
    }

    @PostMapping("/sign")
    public String connexion(@RequestParam String username, @RequestParam String password) {
        User user = repository.getByUsername(username, password);
        if (user != null) {
            return "redirect:/sign";
        }
        return "mylist";
    }
}




