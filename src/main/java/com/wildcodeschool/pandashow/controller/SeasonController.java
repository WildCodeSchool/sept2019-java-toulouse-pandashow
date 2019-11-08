package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.repository.SeasonRepository;
import org.springframework.stereotype.Controller;

@Controller
public class SeasonController {

    private SeasonRepository repository = new SeasonRepository();
}
