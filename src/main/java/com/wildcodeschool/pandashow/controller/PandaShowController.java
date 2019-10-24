package com.wildcodeschool.pandashow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PandaShowController {

    @GetMapping("/sign")
    public String sign() {
        return "/sign";
    }

    @GetMapping("/join")
    public String join() {
        return "/join";
    }

    @GetMapping("/")
    public String index() {
        return "/index";
    }

    @GetMapping("/show_visitor")
    public String show_visitor() {
        return "/show_visitor";
    }
}