package org.spring.framework;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import java.util.Date;
import java.math.BigDecimal;
import java.sql.*;
import java.util.List;

public class OutputServletDao extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        PrintWriter out = response.getWriter();
 		  try {
			ApplicationContext context = new ClassPathXmlApplicationContext("config-spring.xml");
			
			ProdukDao dao = context.getBean(ProdukDao.class);
			
			response.setContentType("text/html");
			
			List <Produk> hasil = dao.cariSemuaProduk();
			out.println("<html><head><title></title></head><body bgcolor=#f0f0f0><h1>HASIL</h1>");
			
			for (Produk p:hasil){
						
			
						request.setAttribute("kode", request.getParameter("kode"));
						request.setAttribute("nama", request.getParameter("nama"));
						request.setAttribute("harga", request.getParameter("harga"));
						request.setAttribute("terakhirUpdate", request.getParameter("terakhirUpdate"));
						
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/outputData.jsp");
						dispatcher.forward(request,response);
						
						out.println("\nKode : " + p.getId() +
											" , Nama : " + p.getNama() +
											" , Harga : " + p.getHarga()+
											" , Terakhir Update : " + p.getTerakhirUpdate() + "<br></body></html>");
			}   
		}catch(Exception e){
			out.println(e);
		}
    }
}
