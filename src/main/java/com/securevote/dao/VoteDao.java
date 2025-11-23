package com.securevote.dao;

import com.securevote.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class VoteDao {

    public boolean castVote(int userId, int candidateId) throws SQLException {
        String insertVoteSql = "INSERT INTO votes (user_id, candidate_id) VALUES (?, ?)";
        String updateCandidateSql = "UPDATE candidates SET votes = votes + 1 WHERE id = ?";

        Connection conn = null;
        PreparedStatement voteStmt = null;
        PreparedStatement candidateStmt = null;

        try {
            conn = DBConnection.getConnection();
            conn.setAutoCommit(false);

            voteStmt = conn.prepareStatement(insertVoteSql);
            voteStmt.setInt(1, userId);
            voteStmt.setInt(2, candidateId);
            voteStmt.executeUpdate();

            candidateStmt = conn.prepareStatement(updateCandidateSql);
            candidateStmt.setInt(1, candidateId);
            candidateStmt.executeUpdate();

            conn.commit();
            return true;

        } catch (SQLException e) {
            if (conn != null) {
                conn.rollback();
            }
            throw e;
        } finally {
            if (voteStmt != null) voteStmt.close();
            if (candidateStmt != null) candidateStmt.close();
            if (conn != null) {
                conn.setAutoCommit(true);
                conn.close();
            }
        }
    }
}
