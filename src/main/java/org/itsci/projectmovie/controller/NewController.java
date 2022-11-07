package org.itsci.projectmovie.controller;

import org.itsci.projectmovie.model.News;
import org.itsci.projectmovie.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.AttributedString;

@Controller
@RequestMapping("/news")
public class NewController {



    private String title = "ข่าว";
    @Autowired
    private NewsService newsService;
    @GetMapping("/list")
    public String showNews (Model model) {
        model.addAttribute("title", "รายการ" + title);
        model.addAttribute("Newsfeeds",newsService.getNewsFeed());
        return "news/list";
    }

    @GetMapping("/create")
    public String NewsFormForAdd(Model model) {
        model.addAttribute("title", "เพิ่ม" + title);
        model.addAttribute("Newsfeeds", new News());
        return "news/news-form";
    }

    @RequestMapping(path="/save", method = RequestMethod.POST)
    public String saveNews(@ModelAttribute("news") News news) {
        newsService.saveNews(news);
        return "redirect:/news/list";
    }

}
