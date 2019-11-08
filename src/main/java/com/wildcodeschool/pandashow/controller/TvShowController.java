package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.repository.TvShowRepository;
import org.springframework.stereotype.Controller;

@Controller
public class TvShowController {

    private TvShowRepository repository = new TvShowRepository();
}
