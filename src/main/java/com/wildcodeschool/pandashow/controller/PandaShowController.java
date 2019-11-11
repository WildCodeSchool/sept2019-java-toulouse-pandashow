package com.wildcodeschool.pandashow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PandaShowController {

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/show-visitor")
    public String showVisitor() {
        return "show-visitor";
    }

    @GetMapping("/show-user")
    public String showUser() {
        return "show-user";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/account")
    public String account() {
        return "account";
    }

    @GetMapping("/mylist")
    public String mylist() {
        return "mylist";
    }
}