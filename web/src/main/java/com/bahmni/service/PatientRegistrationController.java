package com.bahmni.service;


import com.bahmni.service.api.DbDriver;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import org.apache.log4j.Logger;

@Controller
public class PatientRegistrationController{
    static Logger log = Logger.getLogger(PatientRegistrationController.class.getName());
    @CrossOrigin()
    @RequestMapping(value="/registrationfee.form",method = RequestMethod.POST)
    @ResponseBody
    public JSONObject postRegistrationFee(HttpServletRequest request,HttpServletResponse response) throws IOException {
        DbDriver connection=new DbDriver();
        Date today=new Date();
        System.out.println("The patient registration fee end point is called ++++++++++++++++++++++++++++++");
        /*Connection conn=connection.connection();
        if(conn !=null){
            try {
                conn.setAutoCommit(false);
            PreparedStatement st = conn.prepareStatement("INSERT INTO sale_order(partner_id," +
                    "origin," +
                    "date_order," +
                    "shop_id," +
                    "partner_invoice_id," +
                    "partner_shipping_id," +
                    "order_policy," +
                    "pricelist_id," +
                    "care_setting," +
                    "name," +
                    "invoice_quantity," +
                    "picking_policy," +
                    "provider_name," +
                    "datetime_order," +
                    "state," +
                    "user_id) " +
            "VALUES (?,?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            st.setInt(1, 137);
            st.setString(2,"Patient registration page");
            st.setDate(3, new java.sql.Date(today.getTime()));
            st.setInt(4, 1);
                st.setInt(5,137);
                st.setInt(6,137);
                st.setString(7, "manual");
                st.setInt(8, 1);
                st.setString(9, "opd");
                st.setString(10,"SO100");
                st.setString(11,"order");
                st.setString(12,"direct");
                st.setString(13,"elly makuba");
                st.setDate(14, new java.sql.Date(today.getTime()));
                st.setString(15,"draft");
                st.setInt(16,1);
            st.executeUpdate();
                PreparedStatement pslastID=conn.prepareStatement("SELECT MAX(id) from sale_order");
                ResultSet rs=pslastID.executeQuery();
                PreparedStatement prest=null;
                if(rs.next()){
                    int lastId=rs.getInt(1);
                    System.out.println("last inserted id+++++++++++++++++++++++++++++++++++"+lastId);
                    prest=conn.prepareStatement("INSERT INTO sale_order_line(product_id," +
                            "price_unit," +
                            "comments," +
                            "product_uom_qty," +
                            "product_uom," +
                            "order_id," +
                            "external_id," +
                            "external_order_id," +
                            "name," +
                            "type," +
                            "state," +
                            "dispensed_status," +
                            "delay" +
                            ")" +
                            "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    prest.setInt(1,1811 );
                    prest.setDouble(2,1000.0);
                    prest.setString(3,"1");
                    prest.setDouble(4,1.0);
                    prest.setInt(5,1);
                    prest.setInt(6,lastId);
                    prest.setString(7,"");
                    prest.setString(8,"");

                    prest.setString(9,"registration fee");
                    prest.setString(10,"make_to_stock");
                    prest.setString(11, "draft");
                    prest.setBoolean(12,false);
                    prest.setDouble(13,0);
                    prest.executeUpdate();
                }
                conn.commit();
                if(prest !=null) {
                    prest.close();
                }
                pslastID.close();
                st.close();
            } catch (SQLException e) {
                System.out.println("sql exception while saving patient registration fee++++++++++++++++++++++++++++++");
                e.printStackTrace();
                try {
                    conn.rollback();
                } catch (SQLException e1) {

                }

            }

        }*/
        JSONObject object=new JSONObject();
        object.put("success",true);
        return object;
    }
}