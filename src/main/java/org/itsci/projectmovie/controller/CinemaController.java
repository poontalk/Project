package org.itsci.projectmovie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cinema")
public class CinemaController {
    private String title = "Cinema";

    @GetMapping("/list")
    public String listProduct(Model model) {
        model.addAttribute("title", title);
//        model.addAttribute("cinemas", productService.getProducts());
        return "cinema/list";
    }

}
