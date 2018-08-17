package com.bahmni.service;


import com.bahmni.service.api.DbDriver;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

import org.apache.log4j.Logger;

@Controller
public class PatientRegistrationController{
    static Logger log = Logger.getLogger(PatientRegistrationController.class.getName());
    @RequestMapping(value="/registrationfee.form",method = RequestMethod.POST)
    @ResponseBody
    public void postRegistrationFee(HttpServletRequest request,HttpServletResponse response) throws IOException {
        DbDriver conn=new DbDriver();
        System.out.println("The patient registration fee end point is called ++++++++++++++++++++++++++++++");
        conn.connection();
    }
}