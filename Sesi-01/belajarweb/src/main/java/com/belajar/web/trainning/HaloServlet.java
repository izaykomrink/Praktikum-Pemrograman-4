package com.belajar.web.trainning;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HaloServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
             String nama = request.getParameter("nama");
            nama=nama.toUpperCase();
            String output = "<html>";
            output += "<body>";
            output += "<h1>Halo "+nama+"</h1>";
            output += "</body>";
            output += "</html>";
            
            // content type = html
            response.setContentType("text/html");
            response.getWriter().print(output);
        } catch (IOException ex) {
            Logger.getLogger(HaloServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}