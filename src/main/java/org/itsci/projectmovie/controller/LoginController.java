package org.itsci.projectmovie.controller;

import org.itsci.projectmovie.model.Login;
import org.itsci.projectmovie.model.User;
import org.itsci.projectmovie.service.LoginService;
import org.itsci.projectmovie.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/login")
public class LoginController {

    private String title = "ลงทะเบียนสมัครสมาชิก";

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class,stringTrimmerEditor);
    }

    @Autowired
    private UserService userService;
    @Autowired
    private LoginService loginService;
    @GetMapping("/logins")
    public String loginPage(Model model){
        model.addAttribute("title", "ลงชื่อเข้าสู่ระบบ");
        return "login-page";
    }
    @GetMapping("/access-denied")
    public String showAccessDenied(Model model) {
        model.addAttribute("title", "Access Denied");
        return "access-denied";
    }
    @GetMapping("/register")
    public String registerPage(Model model) {
        model.addAttribute("title", "ลงทะเบียนเรียน");
        return "register-form";
    }
    @GetMapping("/create")
    public String showFormForAdd(Model model) {
        model.addAttribute("title", "เพิ่ม" + title);
        model.addAttribute("User", new User());
        model.addAttribute("Login", new Login());
        return "register-form";
    }

    @RequestMapping(path="/save", method = RequestMethod.POST)
    public String processForm(@ModelAttribute("User")User user ,Login login) {
        userService.saveUser(user);
        loginService.saveLogin(login);
        return "redirect:/login-page";
    }

}
