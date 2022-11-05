package org.itsci.projectmovie.controller;

import org.itsci.projectmovie.model.Movies;
import org.itsci.projectmovie.service.CategoryService;
import org.itsci.projectmovie.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/movies")
public class MovieController {
    private String title = "ลิสรายการหนัง";

    @Autowired
    private MovieService MovieService;

    @Autowired
    private CategoryService categoryService;
/*---------------------------------------------------------------------------*/
    @GetMapping("/list")
    public String listMovie(Model model) {
        model.addAttribute("title",title);
        model.addAttribute("Movies", MovieService.getMovies());
        return "movies/list";
    }

/*---------------------------------------------------------------------------*/
    @GetMapping("/create")
    public String showFormForAdd(Model model) {
        model.addAttribute("title", "เพิ่ม" + title);
        model.addAttribute("category", categoryService.getCategories());
        model.addAttribute("movies", new Movies());
        return "movies/movie-form";
    }
/*---------------------------------------------------------------------------*/
@RequestMapping(path="/save", method = RequestMethod.POST)
public String saveProduct(@Valid @ModelAttribute("movie") Movies movie,
                          BindingResult bindingResult, Model model) {
    if (bindingResult.hasErrors()) {
        model.addAttribute("title", "มีข้อผิดพลาดในการบันทึก" + title);
        model.addAttribute("category", categoryService.getCategories());
        return "movies/movie-form";
    } else {
        Movies dbMovie = MovieService.getMovies(movie.getMid());
        if (dbMovie != null) {
            MovieService.updateMovie(dbMovie, movie);
        } else {
            MovieService.saveMovies(movie);
        }
        return "redirect:/movies/list";
    }
    }

    @GetMapping("/{mid}/delete")
    public String deleteMovies(@PathVariable("mid") int id) {
        MovieService.deleteMovies(id);
        return "redirect:/movies/list";
    }

    @GetMapping("/{mid}")
    public String showFormForUpdate(@PathVariable ("mid") int id, Model model) {
        Movies Movie = MovieService.getMovies(Integer.valueOf(id));
        model.addAttribute("title", "แก้ไข" + title);
        model.addAttribute("category", categoryService.getCategories());
        model.addAttribute("movies", Movie);
        return "movies/movie-form";
    }
}

