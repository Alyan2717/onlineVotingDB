// Create or use database
use("online_voting");

// Schema
db.createCollection("voteLog");
db.voteLog.insertMany([
    {
        "voterId": 1,
        "candidateId": 1,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 2,
        "candidateId": 1,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 3,
        "candidateId": 1,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 4,
        "candidateId": 6,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 5,
        "candidateId": 6,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 6,
        "candidateId": 11,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 7,
        "candidateId": 11,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 8,
        "candidateId": 16,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 9,
        "candidateId": 16,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
    {
        "voterId": 10,
        "candidateId": 16,
        "electionId": 1,
        "districtId": 1,
        "timestamp": new Date(),
    },
]);