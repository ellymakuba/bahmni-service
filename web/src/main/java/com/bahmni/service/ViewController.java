package com.bahmni.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class ViewController extends AbstractController{

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request,HttpServletResponse response) throws Exception {
        ModelAndView model = new ModelAndView("Index");
        model.addObject("msg", "hello world");

        return model;
    }
}
