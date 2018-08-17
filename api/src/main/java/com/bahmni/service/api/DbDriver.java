package com.bahmni.service.api;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbDriver {
    public static Connection connection() {
        Connection connection = null;
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/openerp","openerp", "openerp");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
        }
        System.out.println("Opened database successfully");
        return connection;
    }
}