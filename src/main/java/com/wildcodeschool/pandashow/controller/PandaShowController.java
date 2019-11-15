package com.wildcodeschool.pandashow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PandaShowController {

    @GetMapping("/index")
    public String index() {
        return "index.html";
    }

    @GetMapping("/about")
    public String about() {
        return "about.html";
    }

    @GetMapping("/account")
    public String account() {
        return "account.html";
    }
}