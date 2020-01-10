package com.wildcodeschool.pandashow.controller;

import com.wildcodeschool.pandashow.entity.Episode;
import com.wildcodeschool.pandashow.entity.TvShow;
import com.wildcodeschool.pandashow.entity.User;
import com.wildcodeschool.pandashow.repository.EpisodeRepository;
import com.wildcodeschool.pandashow.repository.TvShowRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class TvShowController {

    private EpisodeRepository episodeRepository = new EpisodeRepository();
    private TvShowRepository tvShowRepository = new TvShowRepository();

    @GetMapping("/discover-shows")
    public String discoverShows(Model model) {

        List<TvShow> shows = tvShowRepository.findAllTvShow();
        model.addAttribute("showList", shows);

        return "discover-shows.html";
    }

    @GetMapping("/show-details")
    public String showDetails(HttpSession session, Model out,
                              @RequestParam Long id,
                              @RequestParam (defaultValue = "1") Long idSeason) {

        TvShow show = tvShowRepository.findShowById(id);
        out.addAttribute("showDetails", show);

        List<Episode> episodes = episodeRepository.findAllEpisodesFromSeason(idSeason);
        out.addAttribute("seasonDetails", episodes);

        if (session.getAttribute("currentUser") != null) {

            return "show-user.html";
        }
        return "show-visitor.html";
    }

    @GetMapping("/remove-show")
    public String removeShow(HttpSession session,
                             @RequestParam Long idShow) {

        User user = (User) session.getAttribute("currentUser");
        tvShowRepository.deleteShowById(user.getId(), idShow);
        return "redirect:/mylist";
    }
}