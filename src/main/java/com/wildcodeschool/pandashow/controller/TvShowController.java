package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.entity.TvShow;
import com.wildcodeschool.pandashow.entity.User;
import com.wildcodeschool.pandashow.repository.TvShowRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class TvShowController {

    private TvShowRepository repository = new TvShowRepository();

    @GetMapping("/discover-shows")
    public String discoverShows(Model model) {

        List<TvShow> shows = repository.findAll();
        model.addAttribute("showList", shows);

        return "discover-shows";
    }

    @GetMapping("/show-details")
    public String showDetails(HttpSession session, Model out, @RequestParam Long id) {

        TvShow show = repository.findById(id);
        out.addAttribute("showDetails", show);

        if (session.getAttribute("currentUser") != null) {

            return "show-user";
        }

        return "show-visitor";
    }
}