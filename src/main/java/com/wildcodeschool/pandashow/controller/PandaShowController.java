package com.wildcodeschool.pandashow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PandaShowController {

    @GetMapping("/sign")
    public String sign() {
        return "sign";
    }

    @GetMapping("/join")
    public String join() {
        return "join";
    }

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

    @GetMapping("/discover-shows")
    public String discoverShows() {
        return "discover-shows";
    }
}