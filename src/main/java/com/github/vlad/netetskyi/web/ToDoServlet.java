package com.github.vlad.netetskyi.web;

import com.github.vlad.netetskyi.model.ToDoItem;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.Instant;
import java.util.List;

@WebServlet(name = "ToDoServlet", urlPatterns = "/")
public class ToDoServlet extends HttpServlet {
    List<ToDoItem> toDoList = List.of();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("toDoList", toDoList);
        req.getRequestDispatcher("/jsp/index.jsp").forward(req, resp);

        String item = req.getParameter("item");
        System.out.println(item);
        ToDoItem toDoItem = new ToDoItem(item,Instant.now());
        toDoList.add(toDoItem);


    }
}
