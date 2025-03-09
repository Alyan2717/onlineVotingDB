DELIMITER //
CREATE PROCEDURE `cast_vote`(
	p_voterId INT,
    p_candidateId INT,
    p_electionId INT,
    p_districtId INT
)
BEGIN
	DECLARE hasVoted BOOLEAN;
    DECLARE voterDistrictId INT;
    DECLARE candidateDistrictId INT;
    
    -- Fetch voter details
    SELECT voterHasVoted, districtId
    INTO hasVoted, voterDistrictId
    FROM voter
    WHERE id = p_voterId;
    
    IF hasVoted THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Voter has already voted';
    END IF;
    
    -- Fetch candidate district
    SELECT districtId
    INTO candidateDistrictId
    FROM candidate
    WHERE id = p_candidateId;
    
    IF voterDistrictId = candidateDistrictId THEN
        UPDATE voter 
        SET voterHasVoted = TRUE 
        WHERE id = p_voterId;

        INSERT INTO vote (voterId, candidateId, electionId, districtId)
        VALUES (p_voterId, p_candidateId, p_electionId, p_districtId);
    ELSE
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Voter district does not match candidate district';
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_active_election`()
BEGIN
	SELECT * FROM election
    WHERE CURDATE() >= DATE(electionStartDate) AND CURDATE() <= DATE(electionEndDate);
END //
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_candidate_districtId`(
	IN p_districtId INT
)
BEGIN
	SELECT * FROM candidate
    WHERE districtId = p_districtId;
END //
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_district`()
BEGIN
	SELECT * FROM district;
END //
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_party_electionId`(
	IN p_electionId INT
)
BEGIN
	SELECT * FROM party
    WHERE electionId = p_electionId;
END //
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_vote_count_district`(
	p_electionId INT,
    p_districtId INT
)
BEGIN
	SELECT 
		c.id AS candidateId,
		c.candidateName,
		COUNT(v.candidateId) AS voteCount
	FROM candidate c
	LEFT JOIN vote v ON c.id = v.candidateId 
					 AND v.electionId = p_electionId 
					 AND v.districtId = p_districtId
	WHERE c.districtId = p_districtId
	GROUP BY c.id, c.candidateName;
END //
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_winner_district`(
	p_electionId INT,
    p_districtId INT
)
BEGIN
	DECLARE v_maxVote INT;
    -- Determine the highest vote count for any candidate in the specified district and election.
    SELECT MAX(voteCount) INTO v_maxVote
    FROM (
        SELECT candidateId, COUNT(*) AS voteCount
        FROM vote
        WHERE electionId = p_electionId
          AND districtId = p_districtId
        GROUP BY candidateId
    ) AS sub;
    -- Return all candidates with the maximum vote count, including their name and vote count.
    SELECT v.candidateId, c.candidateName, COUNT(*) AS voteCount
    FROM vote v
    JOIN candidate c ON v.candidateId = c.id
    WHERE v.electionId = p_electionId
      AND v.districtId = p_districtId
    GROUP BY v.candidateId
    HAVING voteCount = v_maxVote;
END //
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `voter_login`(
	IN p_voterEmail VARCHAR(50),
    IN p_voterPassword VARCHAR(20)
)
BEGIN
	SELECT id, voterName, voterNic, voterEmail, voterPhone, voterAddress, districtId, voterHasVoted
    FROM voter
    WHERE voterEmail = p_voterEmail AND voterPassword = p_voterPassword;
END //
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `voter_register`(
	p_email varchar(50),
    p_passsword varchar(50)
)
BEGIN
	DECLARE v_email varchar(50);
    IF (SELECT v_email = email FROM voter WHERE email = p_email) THEN
		SIGNAL SQLSTATE '45000' 
			SET MESSAGE_TEXT = 'Voter already registered with this email';
    END IF;
    
	INSERT INTO voter ( voterName, voterNic, voterEmail, voterPassword, voterPhone, voterAddress, districtId)
    VALUES (
        p_voterName, 
        p_voterNic, 
        p_voterEmail, 
        p_voterPassword, 
        p_voterPhone, 
        p_voterAddress, 
        p_districtId
    );
END
DELIMITER ;