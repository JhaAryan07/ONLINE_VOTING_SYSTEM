package com.securevote.servlet;

import com.securevote.dao.CandidateDao;
import com.securevote.model.Candidate;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/results")
public class ResultServlet extends HttpServlet {

    private final CandidateDao candidateDao = new CandidateDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Candidate> candidates = candidateDao.getAllCandidates();
        req.setAttribute("candidates", candidates);
        req.getRequestDispatcher("results.jsp").forward(req, resp);
    }
}
