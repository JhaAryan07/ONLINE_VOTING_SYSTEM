package com.securevote.servlet;

import com.securevote.dao.UserDao;
import com.securevote.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private final UserDao userDao = new UserDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        boolean success = userDao.registerUser(user);

        if (success) {
            req.setAttribute("message", "Registration successful. Please login.");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            req.setAttribute("error", "Registration failed. Username may already exist.");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
    }
}
