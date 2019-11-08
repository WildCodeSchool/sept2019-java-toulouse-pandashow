package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.repository.UserRepository;
import org.springframework.stereotype.Controller;

@Controller
public class UserController {

    private UserRepository repository = new UserRepository();
}
