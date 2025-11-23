package com.securevote.model;

import java.time.LocalDateTime;

public class Vote {
    private int id;
    private int userId;
    private int candidateId;
    private LocalDateTime votedAt;

    public Vote() {}

    public Vote(int id, int userId, int candidateId, LocalDateTime votedAt) {
        this.id = id;
        this.userId = userId;
        this.candidateId = candidateId;
        this.votedAt = votedAt;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public int getCandidateId() { return candidateId; }
    public void setCandidateId(int candidateId) { this.candidateId = candidateId; }

    public LocalDateTime getVotedAt() { return votedAt; }
    public void setVotedAt(LocalDateTime votedAt) { this.votedAt = votedAt; }
}
