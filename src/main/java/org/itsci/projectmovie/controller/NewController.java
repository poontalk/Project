package org.itsci.projectmovie.controller;

import org.itsci.projectmovie.model.News;
import org.itsci.projectmovie.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;


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

    @GetMapping("{id}/lists")
    public String showNewslist (@PathVariable ("id") int id,Model model) {
        News news = newsService.getNews(id);
        model.addAttribute("title", "รายละเอียด" + title);
        model.addAttribute("Newsfeeds",news);
        return "news/news-list";
    }

    @GetMapping("/create")
    public String NewsFormForAdd(Model model) {
        model.addAttribute("title", "เพิ่ม" + title);
        model.addAttribute("Newsfeeds", new News());
        return "news/news-form";
    }

    @RequestMapping(path="/save", method = RequestMethod.POST)
    public String saveNews(@Valid @ModelAttribute("Newsfeeds") News news,BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("title", "มีข้อผิดพลาดในการบนัทึก" + title);
            return "news/news-form";
        } else {
            News dbNews = newsService.getNews(news.getId());
            if (dbNews != null) {
                newsService.updateNews(dbNews, news);
            } else {
                newsService.saveNews(news);
            }
            return "redirect:/news/list";
        }
    }

    @GetMapping("{id}/update")
    public String NewsFormForUpdate(@PathVariable ("id") int id, Model model) {
        News news = newsService.getNews(id);
        model.addAttribute("title", "แก้ไข" + title);
        model.addAttribute("Newsfeeds", news);
        return "news/news-form";
    }

    @GetMapping("/{id}/delete")
    public String deleteNews(@PathVariable("id") int id) {
        newsService.deleteNews(id);
        return "redirect:/news/list";
    }


}
