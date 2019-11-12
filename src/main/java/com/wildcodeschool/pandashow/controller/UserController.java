package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.entity.User;
import com.wildcodeschool.pandashow.repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    private UserRepository repository = new UserRepository();

    @GetMapping("/sign")
    public String sign() {
        return "sign";
    }

    @PostMapping("/sign")
    public String connexion(@RequestParam String username, @RequestParam String password) {
        User user = repository.getByUsername(username, password);
        return "mylist";
    }

    @GetMapping("/join")
    public String join() {
        return "join";
    }

    @PostMapping("/join")
    public String userUpdate(Model model,
                             @RequestParam String username,
                             @RequestParam String password,
                             @RequestParam String passwordConfirmation,
                             @RequestParam String email
    ) {
        if (!password.equals(passwordConfirmation)) {
            return "redirect:/join";
        }
        model.addAttribute("user", repository.saveUser(username, password, email));
        return "redirect:/mylist";
    }
}




