package com.bahmni.service.api;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbDriver {
    public static Connection connection() {
        Connection connection = null;
        try {
            Class.forName("org.postgresql.Driver");
            //String url = "jdbc:postgresql://192.168.33.10:5432/openerp?user=openerp&password=openerp&ssl=true";
            connection = DriverManager.getConnection("jdbc:postgresql://192.168.33.10:5432/openerp","openerp", "openerp");
            //connection = DriverManager.getConnection(url);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
        }
        System.out.println("Opened database successfully");
        return connection;
    }
}
