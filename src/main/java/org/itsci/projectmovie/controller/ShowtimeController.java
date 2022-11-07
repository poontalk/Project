package org.itsci.projectmovie.controller;




import org.itsci.projectmovie.model.Showtime;
import org.itsci.projectmovie.service.ShowtimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/showtime")
public class ShowtimeController {
    private String title = "รอบฉาย";

    @Autowired
    private ShowtimeService showtimeService;


    @GetMapping("/list")
    public String listShowtime(Model model) {
        model.addAttribute("title",title);
        model.addAttribute("showtime", showtimeService.getShowtime());
        return "movieST/list";
    }

    @GetMapping("/create")
    public String showFormForAdd(Model model) {
        model.addAttribute("title", "เพิ่ม" + title);
        model.addAttribute("showtime", new Showtime());
        return "movieST/showtime-form";
    }



    @RequestMapping(path="/save", method =  RequestMethod.POST)
    public String saveShowtime(@Valid @ModelAttribute("showtime") Showtime showtime, BindingResult bindingResult , Model model) {
        if (bindingResult.hasErrors()){
            model.addAttribute("title","มีข้อผิดพลาดในการบันทึก" + title);
            return "movieST/showtime-form";
        }else {
            //ShowtimeService.saveShowtime(showtime);
            Showtime dbShowtime = showtimeService.getShowtime(showtime.getSid());
            if (dbShowtime != null) {
                showtimeService.updateShowtime(dbShowtime, showtime);
            } else {
                showtimeService.saveShowtime(showtime);
            }
            return "redirect:/movieST/list";
        }
    }


    @GetMapping("/{id}/update")
    public String showFormForUpdate(@PathVariable("Sid") int id, Model model) {
        Showtime showtime = showtimeService.getShowtime(Integer.valueOf(id));
        model.addAttribute("title", "แก้ไข" + title);
        model.addAttribute("showtime", showtime);
        return "movieST/showtime-form";
    }



    @GetMapping("/{id}/delete")
    public String deleteShowtime(@PathVariable("Sid") int Sid) {
        showtimeService.deleteShowtime(Sid);
        return "redirect:/movieST/list";
    }
}
