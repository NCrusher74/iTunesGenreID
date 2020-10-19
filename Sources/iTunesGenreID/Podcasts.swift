//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/18/20.
//

import Foundation
enum Podcasts {
    case podcasts
    case newsAndPolitics
    case history
    case trueCrime
    case government
    case arts(Arts)
    case comedy(Comedy)
    case education(Education)
    case kidsAndFamily(KidsAndFamily)
    case health(Health)
    case tvAndFilm(TVAndFilm)
    case music(Music)
    case religionAndSpirituality(ReligionAndSpirituality)
    case scienceAndMedicine(ScienceAndMedicine)
    case sportsAndRecreation(SportsAndRecreation)
    case technology(Technology)
    case business(Business)
    case gamesAndHobbies(GamesAndHobbies)
    case societyAndCulture(SocietyAndCulture)
    case governmentAndOrganizations(GovernmentAndOrganizations)
    case fiction(Fiction)
    case news(News)
    case leisure(Leisure)
    case healthAndFitness(HealthAndFitness)
    case science(Science)
    case sports(Sports)
    
    static var allCases: [Podcasts] {
        var array: [Podcasts] = [.podcasts, .newsAndPolitics, .history, .trueCrime, .government]
        array.append(contentsOf: Arts.allCases.map({Podcasts.arts($0)}))
        array.append(contentsOf: Comedy.allCases.map({Podcasts.comedy($0)}))
        array.append(contentsOf: Education.allCases.map({Podcasts.education($0)}))
        array.append(contentsOf: KidsAndFamily.allCases.map({Podcasts.kidsAndFamily($0)}))
        array.append(contentsOf: Health.allCases.map({Podcasts.health($0)}))
        array.append(contentsOf: TVAndFilm.allCases.map({Podcasts.tvAndFilm($0)}))
        array.append(contentsOf: Music.allCases.map({Podcasts.music($0)}))
        array.append(contentsOf: ReligionAndSpirituality.allCases.map({Podcasts.religionAndSpirituality($0)}))
        array.append(contentsOf: ScienceAndMedicine.allCases.map({Podcasts.scienceAndMedicine($0)}))
        array.append(contentsOf: SportsAndRecreation.allCases.map({Podcasts.sportsAndRecreation($0)}))
        array.append(contentsOf: Technology.allCases.map({Podcasts.technology($0)}))
        array.append(contentsOf: Business.allCases.map({Podcasts.business($0)}))
        array.append(contentsOf: GamesAndHobbies.allCases.map({Podcasts.gamesAndHobbies($0)}))
        array.append(contentsOf: SocietyAndCulture.allCases.map({Podcasts.societyAndCulture($0)}))
        array.append(contentsOf: GovernmentAndOrganizations.allCases.map({Podcasts.governmentAndOrganizations($0)}))
        array.append(contentsOf: Fiction.allCases.map({Podcasts.fiction($0)}))
        array.append(contentsOf: News.allCases.map({Podcasts.news($0)}))
        array.append(contentsOf: Leisure.allCases.map({Podcasts.leisure($0)}))
        array.append(contentsOf: HealthAndFitness.allCases.map({Podcasts.healthAndFitness($0)}))
        array.append(contentsOf: Science.allCases.map({Podcasts.science($0)}))
        array.append(contentsOf: Sports.allCases.map({Podcasts.sports($0)}))
        return array
    }
    
    var identifier: Int {
        switch self {
            case .podcasts: return 26
            case .newsAndPolitics: return 1311
            case .history: return 1487
            case .trueCrime: return 1488
            case .government: return 1511
            case .arts(let subject):return subject.rawValue
            case .comedy(let subject):return subject.rawValue
            case .education(let subject):return subject.rawValue
            case .kidsAndFamily(let subject):return subject.rawValue
            case .health(let subject):return subject.rawValue
            case .tvAndFilm(let subject):return subject.rawValue
            case .music(let subject):return subject.rawValue
            case .religionAndSpirituality(let subject):return subject.rawValue
            case .scienceAndMedicine(let subject):return subject.rawValue
            case .sportsAndRecreation(let subject):return subject.rawValue
            case .technology(let subject):return subject.rawValue
            case .business(let subject):return subject.rawValue
            case .gamesAndHobbies(let subject):return subject.rawValue
            case .societyAndCulture(let subject):return subject.rawValue
            case .governmentAndOrganizations(let subject):return subject.rawValue
            case .fiction(let subject):return subject.rawValue
            case .news(let subject):return subject.rawValue
            case .leisure(let subject):return subject.rawValue
            case .healthAndFitness(let subject):return subject.rawValue
            case .science(let subject):return subject.rawValue
            case .sports(let subject):return subject.rawValue
        }
    }
    
    var stringValue: String {
        switch self {
            case .podcasts: return "Podcasts"
            case .newsAndPolitics: return "News & Politics"
            case .history: return "History"
            case .trueCrime: return "True Crime"
            case .government: return "Government"
            case .arts(let subject):
                switch subject {
                    case .arts: return subject.stringValue
                    default: return "\(Arts.arts.stringValue)|\(subject.stringValue)"
                }
            case .comedy(let subject):
                switch subject {
                    case .comedy: return subject.stringValue
                    default: return "\(Comedy.comedy.stringValue)|\(subject.stringValue)"
                }
            case .education(let subject):
                switch subject {
                    case .education: return subject.stringValue
                    default: return "\(Education.education.stringValue)|\(subject.stringValue)"
                }
            case .kidsAndFamily(let subject):
                switch subject {
                    case .kidsAndFamily: return subject.stringValue
                    default: return "\(KidsAndFamily.kidsAndFamily.stringValue)|\(subject.stringValue)"
                }
            case .health(let subject):
                switch subject {
                    case .health: return subject.stringValue
                    default: return "\(Health.health.stringValue)|\(subject.stringValue)"
                }
            case .tvAndFilm(let subject):
                switch subject {
                    case .tvAndFilm: return subject.stringValue
                    default: return "\(TVAndFilm.tvAndFilm.stringValue)|\(subject.stringValue)"
                }
            case .music(let subject):
                switch subject {
                    case .music: return subject.stringValue
                    default: return "\(Music.music.stringValue)|\(subject.stringValue)"
                }
            case .religionAndSpirituality(let subject):
                switch subject {
                    case .religionAndSpirituality: return subject.stringValue
                    default: return "\(ReligionAndSpirituality.religionAndSpirituality.stringValue)|\(subject.stringValue)"
                }
            case .scienceAndMedicine(let subject):
                switch subject {
                    case .scienceAndMedicine: return subject.stringValue
                    default: return "\(ScienceAndMedicine.scienceAndMedicine.stringValue)|\(subject.stringValue)"
                }
            case .sportsAndRecreation(let subject):
                switch subject {
                    case .sportsAndRecreation: return subject.stringValue
                    default: return "\(SportsAndRecreation.sportsAndRecreation.stringValue)|\(subject.stringValue)"
                }
            case .technology(let subject):
                switch subject {
                    case .technology: return subject.stringValue
                    default: return "\(Technology.technology.stringValue)|\(subject.stringValue)"
                }
            case .business(let subject):
                switch subject {
                    case .business: return subject.stringValue
                    default: return "\(Business.business.stringValue)|\(subject.stringValue)"
                }
            case .gamesAndHobbies(let subject):
                switch subject {
                    case .gamesAndHobbies: return subject.stringValue
                    default: return "\(GamesAndHobbies.gamesAndHobbies.stringValue)|\(subject.stringValue)"
                }
            case .societyAndCulture(let subject):
                switch subject {
                    case .societyAndCulture: return subject.stringValue
                    default: return "\(SocietyAndCulture.societyAndCulture.stringValue)|\(subject.stringValue)"
                }
            case .governmentAndOrganizations(let subject):
                switch subject {
                    case .governmentAndOrganizations: return subject.stringValue
                    default: return "\(GovernmentAndOrganizations.governmentAndOrganizations.stringValue)|\(subject.stringValue)"
                }
            case .fiction(let subject):
                switch subject {
                    case .fiction: return subject.stringValue
                    default: return "\(Fiction.fiction.stringValue)|\(subject.stringValue)"
                }
            case .news(let subject):
                switch subject {
                    case .news: return subject.stringValue
                    default: return "\(News.news.stringValue)|\(subject.stringValue)"
                }
            case .leisure(let subject):
                switch subject {
                    case .leisure: return subject.stringValue
                    default: return "\(Leisure.leisure.stringValue)|\(subject.stringValue)"
                }
            case .healthAndFitness(let subject):
                switch subject {
                    case .healthAndFitness: return subject.stringValue
                    default: return "\(HealthAndFitness.healthAndFitness.stringValue)|\(subject.stringValue)"
                }
            case .science(let subject):
                switch subject {
                    case .science: return subject.stringValue
                    default: return "\(Science.science.stringValue)|\(subject.stringValue)"
                }
            case .sports(let subject):
                switch subject {
                    case .sports: return subject.stringValue
                    default: return "\(Sports.sports.stringValue)|\(subject.stringValue)"
                }
        }
    }
    
    enum Arts: Int, CaseIterable {
        case arts = 1301
        case food = 1306
        case literature = 1401
        case design = 1402
        case performingArts = 1405
        case visualArts = 1406
        case fashionAndBeauty = 1459
        case books = 1482
        
        var stringValue: String {
            switch self {
                case .arts: return "Arts"
                case .food: return "Food"
                case .literature: return "Literature"
                case .design: return "Design"
                case .performingArts: return "Performing Arts"
                case .visualArts: return "Visual Arts"
                case .fashionAndBeauty: return "Fashion & Beauty"
                case .books: return "Books"
            }
        }
    }
    
    enum Comedy: Int, CaseIterable {
        case comedy = 1303
        case improv = 1495
        case comedyInterviews = 1496
        case standUp = 1497
        
        var stringValue: String {
            switch self {
                case .comedy: return "Comedy"
                case .improv: return "Improv"
                case .comedyInterviews: return "Comedy Interviews"
                case .standUp: return "Stand-Up"
            }
        }
    }
    
    enum Education: Int, CaseIterable {
        case education = 1304
        case k12 = 1415
        case higherEducation = 1416
        case educationalTechnology = 1468
        case languageCourses = 1469
        case training = 1470
        case languageLearning = 1498
        case howTo = 1499
        case selfImprovement = 1500
        case courses = 1501
        
        var stringValue: String {
            switch self {
                case .education: return "Education"
                case .k12: return "K-12"
                case .higherEducation: return "Higher Education"
                case .educationalTechnology: return "Educational Technology"
                case .languageCourses: return "Language Courses"
                case .training: return "Training"
                case .languageLearning: return "Language Learning"
                case .howTo: return "How To"
                case .selfImprovement: return "Self-Improvement"
                case .courses: return "Courses"
            }
        }
    }
    
    enum KidsAndFamily: Int, CaseIterable {
        case kidsAndFamily = 1305
        case educationforKids = 1519
        case storiesforKids = 1520
        case parenting = 1521
        case petsAndAnimals = 1522
        
        var stringValue: String {
            switch self {
                case .kidsAndFamily: return "Kids & Family"
                case .educationforKids: return "Education for Kids"
                case .storiesforKids: return "Stories for Kids"
                case .parenting: return "Parenting"
                case .petsAndAnimals: return "Pets & Animals"
            }
        }
    }
    
    enum Health: Int, CaseIterable {
        case health = 1307
        case fitnessAndNutrition = 1417
        case selfHelp = 1420
        case sexuality = 1421
        case alternativeHealth = 1481
        
        var stringValue: String {
            switch self {
                case .health: return "Health"
                case .fitnessAndNutrition: return "Fitness & Nutrition"
                case .selfHelp: return "Self-Help"
                case .sexuality: return "Sexuality"
                case .alternativeHealth: return "Alternative Health"
            }
        }
    }
    
    enum TVAndFilm: Int, CaseIterable {
        case tvAndFilm = 1309
        case tvReviews = 1561
        case afterShows = 1562
        case filmReviews = 1563
        case filmHistory = 1564
        case filmInterviews = 1565
        
        var stringValue: String {
            switch self {
                case .tvAndFilm: return "TV & Film"
                case .tvReviews: return "TV Reviews"
                case .afterShows: return "After Shows"
                case .filmReviews: return "Film Reviews"
                case .filmHistory: return "Film History"
                case .filmInterviews: return "Film Interviews"
            }
        }
    }
    
    enum Music: Int, CaseIterable {
        case music = 1310
        case musicCommentary = 1523
        case musicHistory = 1524
        case musicInterviews = 1525
        
        var stringValue: String {
            switch self {
                case .music: return "Music"
                case .musicCommentary: return "Music Commentary"
                case .musicHistory: return "Music History"
                case .musicInterviews: return "Music Interviews"
            }
        }
    }
    
    enum ReligionAndSpirituality: Int, CaseIterable {
        case religionAndSpirituality = 1314
        case buddhism = 1438
        case christianity = 1439
        case islam = 1440
        case judaism = 1441
        case spirituality = 1444
        case hinduism = 1463
        case other = 1464
        case religion = 1532
        
        var stringValue: String {
            switch self {
                case .religionAndSpirituality: return "Religion & Spirituality"
                case .buddhism: return "Buddhism"
                case .christianity: return "Christianity"
                case .islam: return "Islam"
                case .judaism: return "Judaism"
                case .spirituality: return "Spirituality"
                case .hinduism: return "Hinduism"
                case .other: return "Other"
                case .religion: return "Religion"
            }
        }
    }
    
    enum ScienceAndMedicine: Int, CaseIterable {
        case scienceAndMedicine = 1315
        case naturalSciences = 1477
        case medicine = 1478
        case socialSciences = 1479
        
        var stringValue: String {
            switch self {
                case .scienceAndMedicine: return "Science & Medicine"
                case .naturalSciences: return "Natural Sciences"
                case .medicine: return "Medicine"
                case .socialSciences: return "Social Sciences"
            }
        }
    }
    
    enum SportsAndRecreation: Int, CaseIterable {
        case sportsAndRecreation = 1316
        case outdoor = 1456
        case professional = 1465
        case collegeAndHighSchool = 1466
        case amateur = 1467
        
        var stringValue: String {
            switch self {
                case .sportsAndRecreation: return "Sports & Recreation"
                case .outdoor: return "Outdoor"
                case .professional: return "Professional"
                case .collegeAndHighSchool: return "College & High School"
                case .amateur: return "Amateur"
            }
        }
    }
    
    enum Technology: Int, CaseIterable {
        case technology = 1318
        case gadgets = 1446
        case techNews = 1448
        case podcasting = 1450
        case softwareHowTo = 1480
        
        var stringValue: String {
            switch self {
                case .technology: return "Technology"
                case .gadgets: return "Gadgets"
                case .techNews: return "Tech News"
                case .podcasting: return "Podcasting"
                case .softwareHowTo: return "Software How-To"
            }
        }
    }
    
    enum Business: Int, CaseIterable {
        case business = 1321
        case careers = 1410
        case investing = 1412
        case managementAndMarketing = 1413
        case businessNews = 1471
        case shopping = 1472
        case management = 1491
        case marketing = 1492
        case entrepreneurship = 1493
        case nonProfit = 1494
        
        var stringValue: String {
            switch self {
                case .business: return "Business"
                case .careers: return "Careers"
                case .investing: return "Investing"
                case .managementAndMarketing: return "Management & Marketing"
                case .businessNews: return "Business News"
                case .shopping: return "Shopping"
                case .management: return "Management"
                case .marketing: return "Marketing"
                case .entrepreneurship: return "Entrepreneurship"
                case .nonProfit: return "Non-Profit"
            }
        }
    }
    
    enum GamesAndHobbies: Int, CaseIterable {
        case gamesAndHobbies = 1323
        case videoGames = 1404
        case automotive = 1454
        case aviation = 1455
        case hobbies = 1460
        case otherGames = 1461
        
        var stringValue: String {
            switch self {
                case .gamesAndHobbies: return "Games & Hobbies"
                case .videoGames: return "Video Games"
                case .automotive: return "Automotive"
                case .aviation: return "Aviation"
                case .hobbies: return "Hobbies"
                case .otherGames: return "Other Games"
            }
        }
    }
    
    enum SocietyAndCulture: Int, CaseIterable {
        case societyAndCulture = 1324
        case personalJournals = 1302
        case placesAndTravel = 1320
        case philosophy = 1443
        case history = 1462
        case documentary = 1543
        case relationships = 1544
        
        var stringValue: String {
            switch self {
                case .societyAndCulture: return "Society & Culture"
                case .personalJournals: return "Personal Journals"
                case .placesAndTravel: return "Places & Travel"
                case .philosophy: return "Philosophy"
                case .history: return "History"
                case .documentary: return "Documentary"
                case .relationships: return "Relationships"
            }
        }
    }
    
    enum GovernmentAndOrganizations: Int, CaseIterable {
        case governmentAndOrganizations = 1325
        case national = 1473
        case regional = 1474
        case local = 1475
        case nonProfit = 1476
        
        var stringValue: String {
            switch self {
                case .governmentAndOrganizations: return "Government & Organizations"
                case .national: return "National"
                case .regional: return "Regional"
                case .local: return "Local"
                case .nonProfit: return "Non-Profit"
            }
        }
    }
    
    enum Fiction: Int, CaseIterable {
        case fiction = 1483
        case drama = 1484
        case scienceFiction = 1485
        case comedyFiction = 1486
        
        var stringValue: String {
            switch self {
                case .fiction: return "Fiction"
                case .drama: return "Drama"
                case .scienceFiction: return "Science Fiction"
                case .comedyFiction: return "Comedy Fiction"
            }
        }
    }
    
    enum News: Int, CaseIterable {
        case news = 1489
        case businessNews = 1490
        case dailyNews = 1526
        case politics = 1527
        case techNews = 1528
        case sportsNews = 1529
        case newsCommentary = 1530
        case entertainmentNews = 1531
        
        var stringValue: String {
            switch self {
                case .news: return "News"
                case .businessNews: return "Business News"
                case .dailyNews: return "Daily News"
                case .politics: return "Politics"
                case .techNews: return "Tech News"
                case .sportsNews: return "Sports News"
                case .newsCommentary: return "News Commentary"
                case .entertainmentNews: return "Entertainment News"
            }
        }
    }
    
    enum Leisure: Int, CaseIterable {
        case leisure = 1502
        case automotive = 1503
        case aviation = 1504
        case hobbies = 1505
        case crafts = 1506
        case games = 1507
        case homeAndGarden = 1508
        case videoGames = 1509
        case animationAndManga = 1510
        
        var stringValue: String {
            switch self {
                case .leisure: return "Leisure"
                case .automotive: return "Automotive"
                case .aviation: return "Aviation"
                case .hobbies: return "Hobbies"
                case .crafts: return "Crafts"
                case .games: return "Games"
                case .homeAndGarden: return "Home & Garden"
                case .videoGames: return "Video Games"
                case .animationAndManga: return "Animation & Manga"
            }
        }
    }
    
    enum HealthAndFitness: Int, CaseIterable {
        case healthAndFitness = 1512
        case alternativeHealth = 1513
        case fitness = 1514
        case nutrition = 1515
        case sexuality = 1516
        case mentalHealth = 1517
        case medicine = 1518
        
        var stringValue: String {
            switch self {
                case .healthAndFitness: return "Health & Fitness"
                case .alternativeHealth: return "Alternative Health"
                case .fitness: return "Fitness"
                case .nutrition: return "Nutrition"
                case .sexuality: return "Sexuality"
                case .mentalHealth: return "Mental Health"
                case .medicine: return "Medicine"
            }
        }
    }
    
    enum Science: Int, CaseIterable {
        case science = 1533
        case naturalSciences = 1534
        case socialSciences = 1535
        case mathematics = 1536
        case nature = 1537
        case astronomy = 1538
        case chemistry = 1539
        case earthSciences = 1540
        case lifeSciences = 1541
        case physics = 1542
        
        var stringValue: String {
            switch self {
                case .science: return "Science"
                case .naturalSciences: return "Natural Sciences"
                case .socialSciences: return "Social Sciences"
                case .mathematics: return "Mathematics"
                case .nature: return "Nature"
                case .astronomy: return "Astronomy"
                case .chemistry: return "Chemistry"
                case .earthSciences: return "Earth Sciences"
                case .lifeSciences: return "Life Sciences"
                case .physics: return "Physics"
            }
        }
    }
    
    enum Sports: Int, CaseIterable {
        case sports = 1545
        case soccer = 1546
        case football = 1547
        case basketball = 1548
        case baseball = 1549
        case hockey = 1550
        case running = 1551
        case rugby = 1552
        case golf = 1553
        case cricket = 1554
        case wrestling = 1555
        case tennis = 1556
        case volleyball = 1557
        case swimming = 1558
        case wilderness = 1559
        case fantasySports = 1560
        
        var stringValue: String {
            switch self {
                case .sports: return "Sports"
                case .soccer: return "Soccer"
                case .football: return "Football"
                case .basketball: return "Basketball"
                case .baseball: return "Baseball"
                case .hockey: return "Hockey"
                case .running: return "Running"
                case .rugby: return "Rugby"
                case .golf: return "Golf"
                case .cricket: return "Cricket"
                case .wrestling: return "Wrestling"
                case .tennis: return "Tennis"
                case .volleyball: return "Volleyball"
                case .swimming: return "Swimming"
                case .wilderness: return "Wilderness"
                case .fantasySports: return "Fantasy Sports"
            }
        }
    }
}
