// Create or use database
use("online_voting");

// Schema
db.createCollection("election");
db.election.insertOne({
    "electionName": "City Mayor Elections",
    "electionDescription": "City Mayor Elections",
    "electionStartDate": "2025-03-08",
    "electionEndDate": "2025-03-27"
});

db.createCollection("party");
db.party.insertMany([
    {
        "_id": ObjectId("67cb5d1565bb9b591f83d214"),
        "partyName": "People’s Unity Party",
        "partyEmail": "pup@test.com",
        "partyDescription": "People’s Unity Party",
        "electionId": ObjectId("67cb5cc465bb9b591f83d213")
    },
    {
        "_id": ObjectId("67cb5d2b65bb9b591f83d215"),
        "partyName": "NextGen Alliance",
        "partyEmail": "nga@test.com",
        "partyDescription": "NextGen Alliance",
        "electionId": ObjectId("67cb5cc465bb9b591f83d213")
    },
    {
        "_id": ObjectId("67cb5d4965bb9b591f83d216"),
        "partyName": "New Dawn Movement",
        "partyEmail": "ndm@test.com",
        "partyDescription": "New Dawn Movement",
        "electionId": ObjectId("67cb5cc465bb9b591f83d213")
    },
    {
        "_id": ObjectId("67cb5d7465bb9b591f83d217"),
        "partyName": "The Earth Guardians",
        "partyEmail": "eg@test.com",
        "partyDescription": "The Earth Guardians",
        "electionId": ObjectId("67cb5cc465bb9b591f83d213")
    },
    {
        "_id": ObjectId("67cb5d9a65bb9b591f83d218"),
        "partyName": "Resilient Nation Movement",
        "partyEmail": "rnm@test.com",
        "partyDescription": "Resilient Nation Movement",
        "electionId": ObjectId("67cb5cc465bb9b591f83d213")
    }
]);

db.createCollection("district");
db.district.insertMany([
    {
        "_id": ObjectId("67cb5e5065bb9b591f83d219"),
        "districtCode": "74600",
        "districtName": "North Nazimabad"
    },
    {
        "_id": ObjectId("67cb5e6065bb9b591f83d21a"),
        "districtCode": "74610",
        "districtName": "Gulshan-e-Iqbal"
    },
    {
        "_id": ObjectId("67cb5e6c65bb9b591f83d21b"),
        "districtCode": "74620",
        "districtName": "Clifton"
    },
    {
        "_id": ObjectId("67cb5e8665bb9b591f83d21c"),
        "districtCode": "74630",
        "districtName": "Korangi"
    },
    {
        "_id": ObjectId("67cb5e9465bb9b591f83d21d"),
        "districtCode": "74640",
        "districtName": "Malir"
    }
]);

db.createCollection("candidate");
db.candidate.insertMany([
    {
        _id: ObjectId("67cb5ef865bb9b591f83d21e"),
        candidateName: "David Harmon",
        candidateAddress: "123 Liberty Street, Springfield",
        candidatePhone: "05512345678",
        candidateEmail: "david.harmon@unityparty.com",
        districtId: ObjectId("67cb5e5065bb9b591f83d219"),
        partyId: ObjectId("67cb5d1565bb9b591f83d214")
    },
    {
        _id: ObjectId("67cb5f1165bb9b591f83d21f"),
        candidateName: "Sophia Martinez",
        candidateAddress: "456 Freedom Ave, Oakwood",
        candidatePhone: "05587654321",
        candidateEmail: "sophia.martinez@unityparty.com",
        districtId: ObjectId("67cb5e6065bb9b591f83d21a"),
        partyId: ObjectId("67cb5d1565bb9b591f83d214")
    },
    {
        _id: ObjectId("67cb5f5565bb9b591f83d220"),
        candidateName: "Elijah Thompson",
        candidateAddress: "789 Justice Blvd, Lakeside",
        candidatePhone: "05511223344",
        candidateEmail: "elijah.thompson@unityparty.com",
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b"),
        partyId: ObjectId("67cb5d1565bb9b591f83d214")
    },
    {
        _id: ObjectId("67cb5f8065bb9b591f83d221"),
        candidateName: "Aisha Khan",
        candidateAddress: "321 Peace Rd, Newtown",
        candidatePhone: "05522334455",
        candidateEmail: "aisha.khan@unityparty.com",
        districtId: ObjectId("67cb5e8665bb9b591f83d21c"),
        partyId: ObjectId("67cb5d1565bb9b591f83d214")
    },
    {
        _id: ObjectId("67cb5fa265bb9b591f83d222"),
        candidateName: "Liam O'Connor",
        candidateAddress: "654 Prosperity Lane, Riverside",
        candidatePhone: "05533445566",
        candidateEmail: "liam.oconnor@unityparty.com",
        districtId: ObjectId("67cb5e9465bb9b591f83d21d"),
        partyId: ObjectId("67cb5d1565bb9b591f83d214")
    },
    {
        _id: ObjectId("67cb600365bb9b591f83d223"),
        candidateName: "Zayn Malik",
        candidateAddress: "12 Future Lane, Downtown",
        candidatePhone: "05598765432",
        candidateEmail: "zayn.malik@nextgenalliance.com",
        districtId: ObjectId("67cb5e5065bb9b591f83d219"),
        partyId: ObjectId("67cb5d2b65bb9b591f83d215")
    },
    {
        _id: ObjectId("67cb604c65bb9b591f83d224"),
        candidateName: "Ava Richardson",
        candidateAddress: "45 Innovation Street, Tech Valley",
        candidatePhone: "05587654321",
        candidateEmail: "ava.richardson@nextgenalliance.com",
        districtId: ObjectId("67cb5e6065bb9b591f83d21a"),
        partyId: ObjectId("67cb5d2b65bb9b591f83d215")
    },
    {
        _id: ObjectId("67cb607065bb9b591f83d225"),
        candidateName: "Noah Bennett",
        candidateAddress: "78 Progress Avenue, Green Park",
        candidatePhone: "05576543210",
        candidateEmail: "noah.bennett@nextgenalliance.com",
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b"),
        partyId: ObjectId("67cb5d2b65bb9b591f83d215")
    },
    {
        _id: ObjectId("67cb60a065bb9b591f83d226"),
        candidateName: "Mia Cheng",
        candidateAddress: "21 Visionary Road, Downtown",
        candidatePhone: "05565432109",
        candidateEmail: "mia.cheng@nextgenalliance.com",
        districtId: ObjectId("67cb5e8665bb9b591f83d21c"),
        partyId: ObjectId("67cb5d2b65bb9b591f83d215")
    },
    {
        _id: ObjectId("67cb60c865bb9b591f83d227"),
        candidateName: "Elijah Carter",
        candidateAddress: "99 Pioneer Drive, Metro City",
        candidatePhone: "05554321098",
        candidateEmail: "elijah.carter@nextgenalliance.com",
        districtId: ObjectId("67cb5e9465bb9b591f83d21d"),
        partyId: ObjectId("67cb5d2b65bb9b591f83d215")
    },
    {
        _id: ObjectId("67cb613365bb9b591f83d228"),
        candidateName: "Sophia Reynolds",
        candidateAddress: "15 Sunrise Avenue, Uptown",
        candidatePhone: "05511223344",
        candidateEmail: "sophia.reynolds@newdawn.com",
        districtId: ObjectId("67cb5e5065bb9b591f83d219"),
        partyId: ObjectId("67cb5d4965bb9b591f83d216")
    },
    {
        _id: ObjectId("67cb615065bb9b591f83d229"),
        candidateName: "Liam Patel",
        candidateAddress: "27 Horizon Street, Midtown",
        candidatePhone: "05522334455",
        candidateEmail: "liam.patel@newdawn.com",
        districtId: ObjectId("67cb5e6065bb9b591f83d21a"),
        partyId: ObjectId("67cb5d4965bb9b591f83d216")
    },
    {
        _id: ObjectId("67cb619765bb9b591f83d22a"),
        candidateName: "Olivia Green",
        candidateAddress: "42 Eco Valley, Green Town",
        candidatePhone: "05533445566",
        candidateEmail: "olivia.green@earthguardians.com",
        districtId: ObjectId("67cb5e5065bb9b591f83d219"),
        partyId: ObjectId("67cb5d7465bb9b591f83d217")
    },
    {
        _id: ObjectId("67cb61ad65bb9b591f83d22b"),
        candidateName: "Ethan Rivers",
        candidateAddress: "88 Nature Lane, Blue District",
        candidatePhone: "05544556677",
        candidateEmail: "ethan.rivers@earthguardians.com",
        districtId: ObjectId("67cb5e6065bb9b591f83d21a"),
        partyId: ObjectId("67cb5d7465bb9b591f83d217")
    },
    {
        _id: ObjectId("67cb61e565bb9b591f83d22c"),
        candidateName: "Daniel Carter",
        candidateAddress: "21 Unity Square, Central District",
        candidatePhone: "05555667788",
        candidateEmail: "daniel.carter@resilientnation.com",
        districtId: ObjectId("67cb5e5065bb9b591f83d219"),
        partyId: ObjectId("67cb5d9a65bb9b591f83d218")
    },
    {
        _id: ObjectId("67cb61fa65bb9b591f83d22d"),
        candidateName: "Amara Hussein",
        candidateAddress: "34 Strength Avenue, East End",
        candidatePhone: "05566778899",
        candidateEmail: "amara.hussein@resilientnation.com",
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b"),
        partyId: ObjectId("67cb5d9a65bb9b591f83d218")
    }
]);

db.createCollection("voter");
db.voter.insertMany([
    {
        _id: ObjectId("67cb637b65bb9b591f83d22e"),
        voterName: "Shayan Khan",
        voterNic: "4210154752134",
        voterEmail: "shk@gmail.com",
        voterPassword: "alkhan12",
        voterPhone: "03325841155",
        voterAddress: "",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb638765bb9b591f83d22f"),
        voterName: "Ayesha Malik",
        voterNic: "4210158754123",
        voterEmail: "ayesha.malik@example.com",
        voterPassword: "ayesha123",
        voterPhone: "03326547895",
        voterAddress: "Street 45, Downtown",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb639265bb9b591f83d230"),
        voterName: "Hamza Ahmed",
        voterNic: "4210189654782",
        voterEmail: "hamza.ahmed@example.com",
        voterPassword: "hamza789",
        voterPhone: "03321147896",
        voterAddress: "Avenue 12, Uptown",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb639d65bb9b591f83d231"),
        voterName: "Fatima Riaz",
        voterNic: "4210124578963",
        voterEmail: "fatima.riaz@example.com",
        voterPassword: "fatima456",
        voterPhone: "03329874561",
        voterAddress: "Block C, West City",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb63a765bb9b591f83d232"),
        voterName: "Ali Rehman",
        voterNic: "4210178456321",
        voterEmail: "ali.rehman@example.com",
        voterPassword: "ali654",
        voterPhone: "03327485961",
        voterAddress: "Sector 9, East Town",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb63b165bb9b591f83d233"),
        voterName: "Zara Qureshi",
        voterNic: "4210187654321",
        voterEmail: "zara.qureshi@example.com",
        voterPassword: "zara852",
        voterPhone: "03321457896",
        voterAddress: "Mall Road, Central City",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb63bb65bb9b591f83d234"),
        voterName: "Usman Javed",
        voterNic: "4210158745698",
        voterEmail: "usman.javed@example.com",
        voterPassword: "usman369",
        voterPhone: "03325879412",
        voterAddress: "Metro Avenue, South Town",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb63c565bb9b591f83d235"),
        voterName: "Hina Tariq",
        voterNic: "4210145789632",
        voterEmail: "hina.tariq@example.com",
        voterPassword: "hina741",
        voterPhone: "03326587412",
        voterAddress: "Garden Block, North City",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb63ce65bb9b591f83d236"),
        voterName: "Ahmed Ali",
        voterNic: "4210136589741",
        voterEmail: "ahmed.ali@example.com",
        voterPassword: "ahmed852",
        voterPhone: "03321236587",
        voterAddress: "Street 7, Green Town",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb63d765bb9b591f83d237"),
        voterName: "Ahmed Akbar",
        voterNic: "4210136589744",
        voterEmail: "ahmed.akbar@example.com",
        voterPassword: "ahmed852",
        voterPhone: "03321236387",
        voterAddress: "Street 7, Green Town",
        voterHasVoted: true,
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb643f65bb9b591f83d238"),
        voterName: "Ahmed Butt",
        voterNic: "4210136589745",
        voterEmail: "ahmed.butt@example.com",
        voterPassword: "ahmed852",
        voterPhone: "03321236587",
        voterAddress: "Street 7, Green Town",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb644c65bb9b591f83d239"),
        voterName: "Sana Javed",
        voterNic: "4210178456214",
        voterEmail: "sana.javed@example.com",
        voterPassword: "sana123",
        voterPhone: "03321458796",
        voterAddress: "Central Avenue, East Town",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb645765bb9b591f83d23a"),
        voterName: "Bilal Riaz",
        voterNic: "4210158745698",
        voterEmail: "bilal.riaz@example.com",
        voterPassword: "bilal456",
        voterPhone: "03325698741",
        voterAddress: "Block 8, West District",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb646065bb9b591f83d23b"),
        voterName: "Ayesha Khan",
        voterNic: "4210123658745",
        voterEmail: "ayesha.khan@example.com",
        voterPassword: "ayesha741",
        voterPhone: "03329874512",
        voterAddress: "Lakeview Street, South City",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb646965bb9b591f83d23c"),
        voterName: "Zeeshan Ahmed",
        voterNic: "4210185749632",
        voterEmail: "zeeshan.ahmed@example.com",
        voterPassword: "zeeshan789",
        voterPhone: "03326587412",
        voterAddress: "Sector 4, North Town",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb647165bb9b591f83d23d"),
        voterName: "Mehwish Tariq",
        voterNic: "4210145789654",
        voterEmail: "mehwish.tariq@example.com",
        voterPassword: "mehwish369",
        voterPhone: "03327485961",
        voterAddress: "Metro Avenue, Downtown",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb647b65bb9b591f83d23e"),
        voterName: "Rizwan Hussain",
        voterNic: "4210198745632",
        voterEmail: "rizwan.hussain@example.com",
        voterPassword: "rizwan852",
        voterPhone: "03321236598",
        voterAddress: "Mall Road, Green Zone",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb648465bb9b591f83d23f"),
        voterName: "Hina Akram",
        voterNic: "4210123658745",
        voterEmail: "hina.akram@example.com",
        voterPassword: "hina456",
        voterPhone: "03321457896",
        voterAddress: "Street 11, Sunrise District",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb648d65bb9b591f83d240"),
        voterName: "Usman Farooq",
        voterNic: "4210136589742",
        voterEmail: "usman.farooq@example.com",
        voterPassword: "usman147",
        voterPhone: "03321478596",
        voterAddress: "Hilltop Avenue, West End",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb649765bb9b591f83d241"),
        voterName: "Amna Sheikh",
        voterNic: "4210163254789",
        voterEmail: "amna.sheikh@example.com",
        voterPassword: "amna963",
        voterPhone: "03325874123",
        voterAddress: "Sector 7, Blue City",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6065bb9b591f83d21a")
    },
    {
        _id: ObjectId("67cb652065bb9b591f83d242"),
        voterName: "Michael Johnson",
        voterNic: "USA123456789",
        voterEmail: "michael.johnson@example.com",
        voterPassword: "michael@2024",
        voterPhone: "+1 202-555-0143",
        voterAddress: "742 Evergreen Terrace, Springfield, USA",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb652e65bb9b591f83d243"),
        voterName: "Sophia Martinez",
        voterNic: "ESP987654321",
        voterEmail: "sophia.martinez@example.com",
        voterPassword: "sophia@2024",
        voterPhone: "+34 610-555-678",
        voterAddress: "Calle Gran Vía, Madrid, Spain",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb653965bb9b591f83d244"),
        voterName: "Hiroshi Tanaka",
        voterNic: "JPN135792468",
        voterEmail: "hiroshi.tanaka@example.com",
        voterPassword: "hiroshi@2024",
        voterPhone: "+81 90-5555-1234",
        voterAddress: "Shinjuku, Tokyo, Japan",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb654565bb9b591f83d245"),
        voterName: "Emma Dubois",
        voterNic: "FRA246813579",
        voterEmail: "emma.dubois@example.com",
        voterPassword: "emma@2024",
        voterPhone: "+33 6-5555-7890",
        voterAddress: "Avenue des Champs-Élysées, Paris, France",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb654f65bb9b591f83d246"),
        voterName: "Liam O'Connor",
        voterNic: "IRL123789456",
        voterEmail: "liam.oconnor@example.com",
        voterPassword: "liam@2024",
        voterPhone: "+353 87-555-2345",
        voterAddress: "Grafton Street, Dublin, Ireland",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb656065bb9b591f83d247"),
        voterName: "Fatima Al-Farsi",
        voterNic: "UAE987321654",
        voterEmail: "fatima.alfarsi@example.com",
        voterPassword: "fatima@2024",
        voterPhone: "+971 50-555-9876",
        voterAddress: "Sheikh Zayed Road, Dubai, UAE",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb656a65bb9b591f83d248"),
        voterName: "Carlos Fernandez",
        voterNic: "MEX852963741",
        voterEmail: "carlos.fernandez@example.com",
        voterPassword: "carlos@2024",
        voterPhone: "+52 55-5555-6789",
        voterAddress: "Paseo de la Reforma, Mexico City, Mexico",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb657265bb9b591f83d249"),
        voterName: "Zhang Wei",
        voterNic: "CHN951357468",
        voterEmail: "zhang.wei@example.com",
        voterPassword: "zhang@2024",
        voterPhone: "+86 139-5555-8765",
        voterAddress: "Wangfujing Street, Beijing, China",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb657b65bb9b591f83d24a"),
        voterName: "Elena Petrova",
        voterNic: "RUS753951456",
        voterEmail: "elena.petrova@example.com",
        voterPassword: "elena@2024",
        voterPhone: "+7 911-555-2345",
        voterAddress: "Tverskaya Street, Moscow, Russia",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb658465bb9b591f83d24b"),
        voterName: "Jacob Müller",
        voterNic: "GER159753486",
        voterEmail: "jacob.muller@example.com",
        voterPassword: "jacob@2024",
        voterPhone: "+49 171-555-6543",
        voterAddress: "Alexanderplatz, Berlin, Germany",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e6c65bb9b591f83d21b")
    },
    {
        _id: ObjectId("67cb65d465bb9b591f83d24c"),
        voterName: "Oliver Smith",
        voterNic: "USA1122334455",
        voterEmail: "oliver.smith@example.com",
        voterPassword: "oliver@2024",
        voterPhone: "+1 310-555-9876",
        voterAddress: "Sunset Boulevard, Los Angeles, USA",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e8665bb9b591f83d21c")
    },
    {
        _id: ObjectId("67cb65e065bb9b591f83d24d"),
        voterName: "Amara Singh",
        voterNic: "IND9876543210",
        voterEmail: "amara.singh@example.com",
        voterPassword: "amara@2024",
        voterPhone: "+91 98765-43210",
        voterAddress: "Connaught Place, New Delhi, India",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e8665bb9b591f83d21c")
    },
    {
        _id: ObjectId("67cb65e965bb9b591f83d24e"),
        voterName: "Daniel Kowalski",
        voterNic: "POL123456789",
        voterEmail: "daniel.kowalski@example.com",
        voterPassword: "daniel@2024",
        voterPhone: "+48 601-555-789",
        voterAddress: "Nowy Świat, Warsaw, Poland",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e8665bb9b591f83d21c")
    },
    {
        _id: ObjectId("67cb65f365bb9b591f83d24f"),
        voterName: "Isabella Rossi",
        voterNic: "ITA456789123",
        voterEmail: "isabella.rossi@example.com",
        voterPassword: "isabella@2024",
        voterPhone: "+39 320-555-4567",
        voterAddress: "Via Veneto, Rome, Italy",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e8665bb9b591f83d21c")
    },
    {
        _id: ObjectId("67cb65fc65bb9b591f83d250"),
        voterName: "Liam Andersen",
        voterNic: "DEN741258963",
        voterEmail: "liam.andersen@example.com",
        voterPassword: "liam@2024",
        voterPhone: "+45 20-555-6543",
        voterAddress: "Nyhavn, Copenhagen, Denmark",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e8665bb9b591f83d21c")
    },
    {
        _id: ObjectId("67cb665865bb9b591f83d251"),
        voterName: "Emily Johnson",
        voterNic: "USA4455667788",
        voterEmail: "emily.johnson@example.com",
        voterPassword: "emily@2024",
        voterPhone: "+1 415-555-7890",
        voterAddress: "Market Street, San Francisco, USA",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e9465bb9b591f83d21d")
    },
    {
        _id: ObjectId("67cb666f65bb9b591f83d252"),
        voterName: "Hiroshi Yami",
        voterNic: "JPN123987654",
        voterEmail: "hiroshi.yami@example.com",
        voterPassword: "hiroshi@2024",
        voterPhone: "+81 90-5555-1234",
        voterAddress: "Shinjuku, Tokyo, Japan",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e9465bb9b591f83d21d")
    },
    {
        _id: ObjectId("67cb668b65bb9b591f83d253"),
        voterName: "Fatima Al-Kudos",
        voterNic: "UAE987321654",
        voterEmail: "fatima.alkudos@example.com",
        voterPassword: "fatima@2024",
        voterPhone: "+971 50-555-9876",
        voterAddress: "Downtown Dubai, UAE",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e9465bb9b591f83d21d")
    },
    {
        _id: ObjectId("67cb669465bb9b591f83d254"),
        voterName: "Carlos Mendes",
        voterNic: "BRA654789321",
        voterEmail: "carlos.mendes@example.com",
        voterPassword: "carlos@2024",
        voterPhone: "+55 21-5555-8765",
        voterAddress: "Copacabana, Rio de Janeiro, Brazil",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e9465bb9b591f83d21d")
    },
    {
        _id: ObjectId("67cb669b65bb9b591f83d255"),
        voterName: "Elena Petrova",
        voterNic: "RUS369258147",
        voterEmail: "elena.petrova@test.com",
        voterPassword: "elena@2024",
        voterPhone: "+7 495-555-9632",
        voterAddress: "Tverskaya Street, Moscow, Russia",
        voterHasVoted: false,
        districtId: ObjectId("67cb5e9465bb9b591f83d21d")
    }
]);

db.createCollection("vote");
db.vote.insertMany([
    {
        _id: ObjectId("67cb67e365bb9b591f83d256"),
        voterId: ObjectId("67cb637b65bb9b591f83d22e"),
        candidateId: ObjectId("67cb5ef865bb9b591f83d21e"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb680765bb9b591f83d257"),
        voterId: ObjectId("67cb638765bb9b591f83d22f"),
        candidateId: ObjectId("67cb5ef865bb9b591f83d21e"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb682565bb9b591f83d258"),
        voterId: ObjectId("67cb639265bb9b591f83d230"),
        candidateId: ObjectId("67cb600365bb9b591f83d223"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb683165bb9b591f83d259"),
        voterId: ObjectId("67cb639d65bb9b591f83d231"),
        candidateId: ObjectId("67cb600365bb9b591f83d223"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb683a65bb9b591f83d25a"),
        voterId: ObjectId("67cb63a765bb9b591f83d232"),
        candidateId: ObjectId("67cb600365bb9b591f83d223"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb685565bb9b591f83d25b"),
        voterId: ObjectId("67cb63b165bb9b591f83d233"),
        candidateId: ObjectId("67cb613365bb9b591f83d228"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb686065bb9b591f83d25c"),
        voterId: ObjectId("67cb63bb65bb9b591f83d234"),
        candidateId: ObjectId("67cb613365bb9b591f83d228"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb687865bb9b591f83d25d"),
        voterId: ObjectId("67cb63c565bb9b591f83d235"),
        candidateId: ObjectId("67cb619765bb9b591f83d22a"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb688165bb9b591f83d25e"),
        voterId: ObjectId("67cb63ce65bb9b591f83d236"),
        candidateId: ObjectId("67cb619765bb9b591f83d22a"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cb68cc65bb9b591f83d25f"),
        voterId: ObjectId("67cb63d765bb9b591f83d237"),
        candidateId: ObjectId("67cb61e565bb9b591f83d22c"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    },
    {
        _id: ObjectId("67cc390f538a394f98fbf72b"),
        voterId: ObjectId("67cb63d765bb9b591f83d237"),
        candidateId: ObjectId("67cb61e565bb9b591f83d22c"),
        electionId: ObjectId("67cb5cc465bb9b591f83d213"),
        districtId: ObjectId("67cb5e5065bb9b591f83d219")
    }
]);