package com.securevote.dao;

import com.securevote.model.Candidate;
import com.securevote.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CandidateDao {

    public List<Candidate> getAllCandidates() {
        List<Candidate> candidates = new ArrayList<>();
        String sql = "SELECT * FROM candidates";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Candidate c = new Candidate();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setParty(rs.getString("party"));
                c.setVotes(rs.getInt("votes"));
                candidates.add(c);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return candidates;
    }
}
