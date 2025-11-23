package com.securevote.servlet;

import com.securevote.dao.UserDao;
import com.securevote.dao.VoteDao;
import com.securevote.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/vote")
public class VoteServlet extends HttpServlet {

    private final VoteDao voteDao = new VoteDao();
    private final UserDao userDao = new UserDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        User user = (User) session.getAttribute("user");
        int userId = user.getId();
        int candidateId = Integer.parseInt(req.getParameter("candidateId"));

        if (userDao.hasUserVoted(userId)) {
            req.setAttribute("error", "You have already voted!");
            req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
            return;
        }

        try {
            boolean success = voteDao.castVote(userId, candidateId);
            if (success) {
                req.setAttribute("message", "Vote cast successfully!");
            } else {
                req.setAttribute("error", "Failed to cast vote.");
            }
        } catch (SQLException e) {
            req.setAttribute("error", "An error occurred while voting.");
        }

        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
    }
}
