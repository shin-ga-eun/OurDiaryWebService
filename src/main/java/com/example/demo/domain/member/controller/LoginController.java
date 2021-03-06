package com.example.demo.domain.member.controller;

import com.example.demo.domain.member.dao.MemberDao;
import com.example.demo.domain.member.dto.LoginDto;
import com.example.demo.domain.member.entity.Member;
import com.example.demo.domain.member.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;

    @GetMapping("/")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String loginCheck(Model model, LoginDto loginDto) {
        Member member = loginService.login(loginDto);

        if(loginDto == null || member == null){
            model.addAttribute("LOGIN_OK", "null");
        }
        else if (loginDto.getEmail().equals(member.getEmail())) {
            if (loginDto.getPassword().equals(member.getPassword())) {
                model.addAttribute("USERNAME", member.getName());
                model.addAttribute("LOGIN_OK", "success");
            } else {
                model.addAttribute("LOGIN_OK", "wrongPassword");
            }
        }

        return "loginCheck";
    }
}



