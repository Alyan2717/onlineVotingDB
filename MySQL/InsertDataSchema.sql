INSERT INTO election (electionName, electionDescription, electionStartDate, electionEndDate)
VALUES (
    'City Mayor Elections',
    'City Mayor Elections',
    '2025-03-08',
    '2025-03-27'
);

INSERT INTO party (partyName, partyEmail, partyDescription, electionId) 
VALUES 
('People’s Unity Party', 'pup@test.com', 'Description', 1),
('NextGen Alliance', 'nga@test.com', 'Description', 1),
('New Dawn Movement', 'ndm@test.com', 'Description', 1),
('The Earth Guardians', 'eg@test.com', 'Description', 1),
('Resilient Nation Movement', 'rnm@test.com', 'Description', 1);

INSERT INTO district (districtCode, districtName)
VALUES 
('74600', 'North Nazimabad'),
('74610', 'Gulshan-e-Iqbal'),
('74620', 'Clifton'),
('74630', 'Korangi'),
('74640', 'Malir');

INSERT INTO candidate (candidateName, candidateAddress, candidatePhone, candidateEmail, districtId, partyId)
VALUES
-- Party 1 Candidates
('John Smith P1', '101 Main St, CityA', '111-111-0101', 'p1cand1@example.com', 1, 1),
('Alice Brown P1', '102 Main St, CityA', '111-111-0102', 'p1cand2@example.com', 2, 1),
('Robert Jones P1', '103 Main St, CityA', '111-111-0103', 'p1cand3@example.com', 3, 1),
('Emily Davis P1', '104 Main St, CityA', '111-111-0104', 'p1cand4@example.com', 4, 1),
('Michael Wilson P1', '105 Main St, CityA', '111-111-0105', 'p1cand5@example.com', 5, 1),

-- Party 2 Candidates
('Laura Taylor P2', '201 Elm St, CityB', '222-222-0201', 'p2cand1@example.com', 1, 2),
('Daniel Anderson P2', '202 Elm St, CityB', '222-222-0202', 'p2cand2@example.com', 2, 2),
('Sophia Thomas P2', '203 Elm St, CityB', '222-222-0203', 'p2cand3@example.com', 3, 2),
('James Jackson P2', '204 Elm St, CityB', '222-222-0204', 'p2cand4@example.com', 4, 2),
('Olivia White P2', '205 Elm St, CityB', '222-222-0205', 'p2cand5@example.com', 5, 2),

-- Party 3 Candidates
('William Harris P3', '301 Oak St, CityC', '333-333-0301', 'p3cand1@example.com', 1, 3),
('Emma Martin P3', '302 Oak St, CityC', '333-333-0302', 'p3cand2@example.com', 2, 3),
('Benjamin Lee P3', '303 Oak St, CityC', '333-333-0303', 'p3cand3@example.com', 3, 3),
('Mia Walker P3', '304 Oak St, CityC', '333-333-0304', 'p3cand4@example.com', 4, 3),
('Lucas Hall P3', '305 Oak St, CityC', '333-333-0305', 'p3cand5@example.com', 5, 3),

-- Party 4 Candidates
('Henry Young P4', '401 Pine St, CityD', '444-444-0401', 'p4cand1@example.com', 1, 4),
('Grace King P4', '402 Pine St, CityD', '444-444-0402', 'p4cand2@example.com', 2, 4),
('Samuel Wright P4', '403 Pine St, CityD', '444-444-0403', 'p4cand3@example.com', 3, 4),
('Chloe Scott P4', '404 Pine St, CityD', '444-444-0404', 'p4cand4@example.com', 4, 4),
('Ethan Green P4', '405 Pine St, CityD', '444-444-0405', 'p4cand5@example.com', 5, 4),

-- Party 5 Candidates
('Zoe Baker P5', '501 Cedar St, CityE', '555-555-0501', 'p5cand1@example.com', 1, 5),
('Liam Adams P5', '502 Cedar St, CityE', '555-555-0502', 'p5cand2@example.com', 2, 5),
('Ava Nelson P5', '503 Cedar St, CityE', '555-555-0503', 'p5cand3@example.com', 3, 5),
('Noah Carter P5', '504 Cedar St, CityE', '555-555-0504', 'p5cand4@example.com', 4, 5),
('Isabella Mitchell P5', '505 Cedar St, CityE', '555-555-0505', 'p5cand5@example.com', 5, 5);

INSERT INTO voter (voterName, voterNic, voterEmail, voterPassword, voterPhone, voterAddress, districtId)
VALUES
-- District 1 Voters
('Sophia Mohammad', 'NIC-D1-001', 'sophia.mohammad_d1@example.com', 'pass123', '111-111-0001', '123 Main St, District 1', 1),
('Alexander Johnson', 'NIC-D1-002', 'alexander.johnson_d1@example.com', 'pass123', '111-111-0002', '124 Main St, District 1', 1),
('Emily Davis', 'NIC-D1-003', 'emily.davis_d1@example.com', 'pass123', '111-111-0003', '125 Main St, District 1', 1),
('Olivia Martinez', 'NIC-D1-004', 'olivia.martinez_d1@example.com', 'pass123', '111-111-0004', '126 Main St, District 1', 1),
('Liam Brown', 'NIC-D1-005', 'liam.brown_d1@example.com', 'pass123', '111-111-0005', '127 Main St, District 1', 1),
('Noah Wilson', 'NIC-D1-006', 'noah.wilson_d1@example.com', 'pass123', '111-111-0006', '128 Main St, District 1', 1),
('Emma Anderson', 'NIC-D1-007', 'emma.anderson_d1@example.com', 'pass123', '111-111-0007', '129 Main St, District 1', 1),
('James Smith', 'NIC-D1-008', 'james.smith_d1@example.com', 'pass123', '111-111-0008', '130 Main St, District 1', 1),
('Ava Patel', 'NIC-D1-009', 'ava.patel_d1@example.com', 'pass123', '111-111-0009', '131 Main St, District 1', 1),
('Benjamin Lee', 'NIC-D1-010', 'benjamin.lee_d1@example.com', 'pass123', '111-111-0010', '132 Main St, District 1', 1),

-- District 2 Voters
('Mia Jackson', 'NIC-D2-001', 'mia.jackson_d2@example.com', 'pass123', '222-222-0001', '201 Second St, District 2', 2),
('William Garcia', 'NIC-D2-002', 'william.garcia_d2@example.com', 'pass123', '222-222-0002', '202 Second St, District 2', 2),
('Chloe Martinez', 'NIC-D2-003', 'chloe.martinez_d2@example.com', 'pass123', '222-222-0003', '203 Second St, District 2', 2),
('Ethan Miller', 'NIC-D2-004', 'ethan.miller_d2@example.com', 'pass123', '222-222-0004', '204 Second St, District 2', 2),
('Isabella Rodriguez', 'NIC-D2-005', 'isabella.rodriguez_d2@example.com', 'pass123', '222-222-0005', '205 Second St, District 2', 2),
('Jacob Hernandez', 'NIC-D2-006', 'jacob.hernandez_d2@example.com', 'pass123', '222-222-0006', '206 Second St, District 2', 2),
('Charlotte Davis', 'NIC-D2-007', 'charlotte.davis_d2@example.com', 'pass123', '222-222-0007', '207 Second St, District 2', 2),
('Michael Thompson', 'NIC-D2-008', 'michael.thompson_d2@example.com', 'pass123', '222-222-0008', '208 Second St, District 2', 2),
('Amelia White', 'NIC-D2-009', 'amelia.white_d2@example.com', 'pass123', '222-222-0009', '209 Second St, District 2', 2),
('Daniel Moore', 'NIC-D2-010', 'daniel.moore_d2@example.com', 'pass123', '222-222-0010', '210 Second St, District 2', 2),

-- District 3 Voters
('Olivia Taylor', 'NIC-D3-001', 'olivia.taylor_d3@example.com', 'pass123', '333-333-0001', '301 Third St, District 3', 3),
('Ethan Clark', 'NIC-D3-002', 'ethan.clark_d3@example.com', 'pass123', '333-333-0002', '302 Third St, District 3', 3),
('Sophia Lewis', 'NIC-D3-003', 'sophia.lewis_d3@example.com', 'pass123', '333-333-0003', '303 Third St, District 3', 3),
('Logan Robinson', 'NIC-D3-004', 'logan.robinson_d3@example.com', 'pass123', '333-333-0004', '304 Third St, District 3', 3),
('Emma Walker', 'NIC-D3-005', 'emma.walker_d3@example.com', 'pass123', '333-333-0005', '305 Third St, District 3', 3),
('Mason Hall', 'NIC-D3-006', 'mason.hall_d3@example.com', 'pass123', '333-333-0006', '306 Third St, District 3', 3),
('Ava Allen', 'NIC-D3-007', 'ava.allen_d3@example.com', 'pass123', '333-333-0007', '307 Third St, District 3', 3),
('Lucas Young', 'NIC-D3-008', 'lucas.young_d3@example.com', 'pass123', '333-333-0008', '308 Third St, District 3', 3),
('Mia King', 'NIC-D3-009', 'mia.king_d3@example.com', 'pass123', '333-333-0009', '309 Third St, District 3', 3),
('Noah Wright', 'NIC-D3-010', 'noah.wright_d3@example.com', 'pass123', '333-333-0010', '310 Third St, District 3', 3),

-- District 4 Voters
('Isabella Scott', 'NIC-D4-001', 'isabella.scott_d4@example.com', 'pass123', '444-444-0001', '401 Fourth St, District 4', 4),
('Benjamin Harris', 'NIC-D4-002', 'benjamin.harris_d4@example.com', 'pass123', '444-444-0002', '402 Fourth St, District 4', 4),
('Mia Lewis', 'NIC-D4-003', 'mia.lewis_d4@example.com', 'pass123', '444-444-0003', '403 Fourth St, District 4', 4),
('Logan Allen', 'NIC-D4-004', 'logan.allen_d4@example.com', 'pass123', '444-444-0004', '404 Fourth St, District 4', 4),
('Emily Young', 'NIC-D4-005', 'emily.young_d4@example.com', 'pass123', '444-444-0005', '405 Fourth St, District 4', 4),
('Jacob Hill', 'NIC-D4-006', 'jacob.hill_d4@example.com', 'pass123', '444-444-0006', '406 Fourth St, District 4', 4),
('Chloe Adams', 'NIC-D4-007', 'chloe.adams_d4@example.com', 'pass123', '444-444-0007', '407 Fourth St, District 4', 4),
('William Nelson', 'NIC-D4-008', 'william.nelson_d4@example.com', 'pass123', '444-444-0008', '408 Fourth St, District 4', 4),
('Sophia Carter', 'NIC-D4-009', 'sophia.carter_d4@example.com', 'pass123', '444-444-0009', '409 Fourth St, District 4', 4),
('Oliver Mitchell', 'NIC-D4-010', 'oliver.mitchell_d4@example.com', 'pass123', '444-444-0010', '410 Fourth St, District 4', 4),

-- District 5 Voters
('Ava Turner', 'NIC-D5-001', 'ava.turner_d5@example.com', 'pass123', '555-555-0001', '501 Fifth St, District 5', 5),
('Lucas Parker', 'NIC-D5-002', 'lucas.parker_d5@example.com', 'pass123', '555-555-0002', '502 Fifth St, District 5', 5),
('Ella Evans', 'NIC-D5-003', 'ella.evans_d5@example.com', 'pass123', '555-555-0003', '503 Fifth St, District 5', 5),
('Mason Edwards', 'NIC-D5-004', 'mason.edwards_d5@example.com', 'pass123', '555-555-0004', '504 Fifth St, District 5', 5),
('Olivia Collins', 'NIC-D5-005', 'olivia.collins_d5@example.com', 'pass123', '555-555-0005', '505 Fifth St, District 5', 5),
('Ethan Stewart', 'NIC-D5-006', 'ethan.stewart_d5@example.com', 'pass123', '555-555-0006', '506 Fifth St, District 5', 5),
('Sophia Morris', 'NIC-D5-007', 'sophia.morris_d5@example.com', 'pass123', '555-555-0007', '507 Fifth St, District 5', 5),
('Benjamin Rogers', 'NIC-D5-008', 'benjamin.rogers_d5@example.com', 'pass123', '555-555-0008', '508 Fifth St, District 5', 5),
('Chloe Reed', 'NIC-D5-009', 'chloe.reed_d5@example.com', 'pass123', '555-555-0009', '509 Fifth St, District 5', 5),
('Jacob Cook', 'NIC-D5-010', 'jacob.cook_d5@example.com', 'pass123', '555-555-0010', '510 Fifth St, District 5', 5)