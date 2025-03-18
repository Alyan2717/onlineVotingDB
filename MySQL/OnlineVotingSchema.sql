CREATE TABLE election (
    id INT PRIMARY KEY AUTO_INCREMENT,
    electionName VARCHAR(50) NOT NULL,
    electionDescription VARCHAR(200),
    electionStartDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    electionEndDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE party (
    id INT PRIMARY KEY AUTO_INCREMENT,
    partyName VARCHAR(50) NOT NULL,
    partyEmail VARCHAR(50) UNIQUE,
    partyDescription VARCHAR(200),
    electionId INT,
    CONSTRAINT fk_election FOREIGN KEY (electionId) REFERENCES election(id)
);

CREATE TABLE district (
	id INT PRIMARY KEY AUTO_INCREMENT,
    districtCode varchar(20),
    districtName varchar(100)
);

CREATE TABLE candidate (
    id INT PRIMARY KEY AUTO_INCREMENT,
    candidateName VARCHAR(50) NOT NULL,
    candidateAddress VARCHAR(200),
    candidatePhone VARCHAR(15),
    candidateEmail VARCHAR(50) UNIQUE NOT NULL,
    districtId INT,
    partyId INT,
    CONSTRAINT fk_candidate_district FOREIGN KEY (districtId) REFERENCES district(id),
    CONSTRAINT fk_candidate_party FOREIGN KEY (partyId) REFERENCES party(id)
);

CREATE TABLE voter (
	id INT PRIMARY KEY AUTO_INCREMENT,
    voterName VARCHAR(50) NOT NULL,
    voterNic VARCHAR(20) UNIQUE NOT NULL,
    voterEmail VARCHAR(50) UNIQUE NOT NULL,
    voterPassword VARCHAR(20) NOT NULL,
    voterPhone VARCHAR(15),
    voterAddress VARCHAR(200),
    voterHasVoted BOOLEAN DEFAULT FALSE,
    districtId INT,
    CONSTRAINT fk_voter_district FOREIGN KEY (districtId) REFERENCES district(id)
);

CREATE TABLE vote (
	id INT PRIMARY KEY AUTO_INCREMENT,
    voterId INT,
    candidateId INT,
    electionId INT,
    districtId INT,
    CONSTRAINT fk_vote_voter FOREIGN KEY (voterId) REFERENCES voterId(id),
    CONSTRAINT fk_vote_candidate FOREIGN KEY (candidateId) REFERENCES candidate(id),
    CONSTRAINT fk_vote_election FOREIGN KEY (electionId) REFERENCES election(id),
    CONSTRAINT fk_vote_district FOREIGN KEY (districtId) REFERENCES district(id)
);