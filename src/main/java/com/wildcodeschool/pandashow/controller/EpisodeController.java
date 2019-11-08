package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.repository.EpisodeRepository;
import org.springframework.stereotype.Controller;

@Controller
public class EpisodeController {

    private EpisodeRepository repository = new EpisodeRepository();
}
