package com.example.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String product = request.getParameter("product");
    double listPrice = Double.parseDouble(request.getParameter("list-price"));
    double discountPercent  = Double.parseDouble(request.getParameter("discount-percent"));
    double discountAmount = listPrice * discountPercent * 0.01;

    PrintWriter writer = response.getWriter();
    writer.println("<html>");
    writer.println("<h1>Product: " + product + "</h1>");
    writer.println("<h1>Discount Amount: " + discountAmount + "</h1>");
    writer.println("<h1>Discount Price: " + listPrice + "</h1>");
    writer.println("</html>");
    }



}
