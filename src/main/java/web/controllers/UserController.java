package web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import web.models.User;
import web.service.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/users")
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService)
     {
        this.userService = userService;
    }

    @GetMapping()
    public String index(Model model) {
        model.addAttribute("users", userService.index());
        return "pages/index";
    }


    @GetMapping("/new")
    public String newUser(@ModelAttribute("user") User user) {
        System.out.println("new User");
        return "pages/new";
    }

    @PostMapping("")
    public String create(@ModelAttribute("user") @Valid User user,
                         BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "pages/new";
        }
        userService.save(user);
        return "redirect:/users";
    }

    @GetMapping("/edit")
    public String edit(@RequestParam("id") Long id, Model model) {
        if (!userService.show(id).isPresent()) {
            return "redirect:/users";
        } else {
            model.addAttribute("user",userService.show(id));
            return "pages/edit";
        }
    }

    @PostMapping ("/{edit}")
    public String update(@ModelAttribute("user") @Valid User user,
                         BindingResult bindingResult, @PathVariable String edit) {
        if (bindingResult.hasErrors()) {
            return "pages/new";
        }
        userService.update(user);
        return "redirect:/users";
    }

    @PostMapping("/delete")
    public String delite(@RequestParam("id") Long id) {
        userService.delite(id);
        return "redirect:/users";
    }
}
