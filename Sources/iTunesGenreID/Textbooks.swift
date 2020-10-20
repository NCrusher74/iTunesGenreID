//
//  Textbooks.swift
//  
//
//  Created by Nolaine Crusher on 10/19/20.
//

import Foundation
enum Textbooks: CaseIterable {
    case textbooks
    case biographiesAndMemoirs
    case humor
    case parenting
    case artsAndEntertainment(ArtsAndEntertainment)
    case businessAndPersonalFinance(BusinessAndPersonalFinance)
    case childrenAndTeens(ChildrenAndTeens)
    case comicsAndGraphicNovels(ComicsAndGraphicNovels)
    case communicationsAndMedia(CommunicationsAndMedia)
    case computersAndInternet(ComputersAndInternet)
    case cookbooksFoodAndWine(CookbooksFoodAndWine)
    case engineering(Engineering)
    case fictionAndLiterature(FictionAndLiterature)
    case healthMindAndBody(HealthMindAndBody)
    case history(History)
    case languageStudies(LanguageStudies)
    case lifestyleAndHome(LifestyleAndHome)
    case mathematics(Mathematics)
    case medicine(Medicine)
    case mysteriesAndThrillers(MysteriesAndThrillers)
    case nonfiction(Nonfiction)
    case philosophy(Philosophy)
    case politicsAndCurrentEvents(PoliticsAndCurrentEvents)
    case professionalAndTechnical(ProfessionalAndTechnical)
    case reference(Reference)
    case religionAndSpirituality(ReligionAndSpirituality)
    case romance(Romance)
    case sciFiAndFantasy(SciFiAndFantasy)
    case scienceAndNature(ScienceAndNature)
    case socialScience(SocialScience)
    case society(Society)
    case sportsAndOutdoors(SportsAndOutdoors)
    case teachingAndLearning(TeachingAndLearning)
    case travelAndAdventure(TravelAndAdventure)
    
    static var allCases: [Textbooks] {
        var array: [Textbooks] = [.textbooks, .biographiesAndMemoirs, .humor, .parenting]
        array.append(contentsOf: ArtsAndEntertainment.allCases.map({Textbooks.artsAndEntertainment($0)}))
        array.append(contentsOf: BusinessAndPersonalFinance.allCases.map({Textbooks.businessAndPersonalFinance($0)}))
        array.append(contentsOf: ChildrenAndTeens.allCases.map({Textbooks.childrenAndTeens($0)}))
        array.append(contentsOf: ComicsAndGraphicNovels.allCases.map({Textbooks.comicsAndGraphicNovels($0)}))
        array.append(contentsOf: CommunicationsAndMedia.allCases.map({Textbooks.communicationsAndMedia($0)}))
        array.append(contentsOf: ComputersAndInternet.allCases.map({Textbooks.computersAndInternet($0)}))
        array.append(contentsOf: CookbooksFoodAndWine.allCases.map({Textbooks.cookbooksFoodAndWine($0)}))
        array.append(contentsOf: Engineering.allCases.map({Textbooks.engineering($0)}))
        array.append(contentsOf: FictionAndLiterature.allCases.map({Textbooks.fictionAndLiterature($0)}))
        array.append(contentsOf: HealthMindAndBody.allCases.map({Textbooks.healthMindAndBody($0)}))
        array.append(contentsOf: History.allCases.map({Textbooks.history($0)}))
        array.append(contentsOf: LanguageStudies.allCases.map({Textbooks.languageStudies($0)}))
        array.append(contentsOf: LifestyleAndHome.allCases.map({Textbooks.lifestyleAndHome($0)}))
        array.append(contentsOf: Mathematics.allCases.map({Textbooks.mathematics($0)}))
        array.append(contentsOf: MysteriesAndThrillers.allCases.map({Textbooks.mysteriesAndThrillers($0)}))
        array.append(contentsOf: Nonfiction.allCases.map({Textbooks.nonfiction($0)}))
        array.append(contentsOf: Philosophy.allCases.map({Textbooks.philosophy($0)}))
        array.append(contentsOf: PoliticsAndCurrentEvents.allCases.map({Textbooks.politicsAndCurrentEvents($0)}))
        array.append(contentsOf: ProfessionalAndTechnical.allCases.map({Textbooks.professionalAndTechnical($0)}))
        array.append(contentsOf: Reference.allCases.map({Textbooks.reference($0)}))
        array.append(contentsOf: ReligionAndSpirituality.allCases.map({Textbooks.religionAndSpirituality($0)}))
        array.append(contentsOf: Romance.allCases.map({Textbooks.romance($0)}))
        array.append(contentsOf: SciFiAndFantasy.allCases.map({Textbooks.sciFiAndFantasy($0)}))
        array.append(contentsOf: ScienceAndNature.allCases.map({Textbooks.scienceAndNature($0)}))
        array.append(contentsOf: SocialScience.allCases.map({Textbooks.socialScience($0)}))
        array.append(contentsOf: Society.allCases.map({Textbooks.society($0)}))
        array.append(contentsOf: SportsAndOutdoors.allCases.map({Textbooks.sportsAndOutdoors($0)}))
        array.append(contentsOf: TeachingAndLearning.allCases.map({Textbooks.teachingAndLearning($0)}))
        array.append(contentsOf: TravelAndAdventure.allCases.map({Textbooks.travelAndAdventure($0)}))
        return array
    }
    
    var identifier: Int {
        switch self {
            case .textbooks: return 40
            case .biographiesAndMemoirs: return 15017
            case .humor: return 15108
            case .parenting: return 15166
            case .artsAndEntertainment(let subject): return subject.identifier
            case .businessAndPersonalFinance(let subject): return subject.rawValue
            case .childrenAndTeens(let subject): return subject.rawValue
            case .comicsAndGraphicNovels(let subject): return subject.rawValue
            case .communicationsAndMedia(let subject): return subject.rawValue
            case .computersAndInternet(let subject): return subject.rawValue
            case .cookbooksFoodAndWine(let subject): return subject.rawValue
            case .engineering(let subject): return subject.rawValue
            case .fictionAndLiterature(let subject): return subject.rawValue
            case .healthMindAndBody(let subject): return subject.rawValue
            case .history(let subject): return subject.identifier
            case .languageStudies(let subject): return subject.rawValue
            case .lifestyleAndHome(let subject): return subject.rawValue
            case .mathematics(let subject): return subject.rawValue
            case .medicine(let subject): return subject.rawValue
            case .mysteriesAndThrillers(let subject): return subject.rawValue
            case .nonfiction(let subject): return subject.rawValue
            case .philosophy(let subject): return subject.rawValue
            case .politicsAndCurrentEvents(let subject): return subject.rawValue
            case .professionalAndTechnical(let subject): return subject.rawValue
            case .reference(let subject): return subject.rawValue
            case .religionAndSpirituality(let subject): return subject.rawValue
            case .romance(let subject): return subject.rawValue
            case .sciFiAndFantasy(let subject): return subject.identifier
            case .scienceAndNature(let subject): return subject.rawValue
            case .socialScience(let subject): return subject.rawValue
            case .society(let subject): return subject.rawValue
            case .sportsAndOutdoors(let subject): return subject.rawValue
            case .teachingAndLearning(let subject): return subject.rawValue
            case .travelAndAdventure(let subject): return subject.identifier
        }
    }
    
    var stringValue: String {
        switch self {
            case .textbooks: return "Textbooks"
            case .biographiesAndMemoirs: return "Biographies & Memoirs"
            case .humor: return "Humor"
            case .parenting: return "Parenting"
            case .artsAndEntertainment(let subject):
                switch subject {
                    case .artsAndEntertainment: return subject.stringValue
                    default: return "\(ArtsAndEntertainment.artsAndEntertainment.stringValue)|\(subject.stringValue)"
                }
            case .businessAndPersonalFinance(let subject):
                switch subject {
                    case .businessAndPersonalFinance: return subject.stringValue
                    default: return "\(BusinessAndPersonalFinance.businessAndPersonalFinance.stringValue)|\(subject.stringValue)"
                }
            case .childrenAndTeens(let subject):
                switch subject {
                    case .childrenAndTeens: return subject.stringValue
                    default: return "\(ChildrenAndTeens.childrenAndTeens.stringValue)|\(subject.stringValue)"
                }
            case .comicsAndGraphicNovels(let subject):
                switch subject {
                    case .comicsAndGraphicNovels: return subject.stringValue
                    default: return "\(ComicsAndGraphicNovels.comicsAndGraphicNovels.stringValue)|\(subject.stringValue)"
                }
            case .communicationsAndMedia(let subject):
                switch subject {
                    case .communicationsAndMedia: return subject.stringValue
                    default: return "\(CommunicationsAndMedia.communicationsAndMedia.stringValue)|\(subject.stringValue)"
                }
            case .computersAndInternet(let subject):
                switch subject {
                    case .computersAndInternet: return subject.stringValue
                    default: return "\(ComputersAndInternet.computersAndInternet.stringValue)|\(subject.stringValue)"
                }
            case .cookbooksFoodAndWine(let subject):
                switch subject {
                    case .cookbooksFoodAndWine: return subject.stringValue
                    default: return "\(CookbooksFoodAndWine.cookbooksFoodAndWine.stringValue)|\(subject.stringValue)"
                }
            case .engineering(let subject):
                switch subject {
                    case .engineering: return subject.stringValue
                    default: return "\(Engineering.engineering.stringValue)|\(subject.stringValue)"
                }
            case .fictionAndLiterature(let subject):
                switch subject {
                    case .fictionAndLiterature: return subject.stringValue
                    default: return "\(FictionAndLiterature.fictionAndLiterature.stringValue)|\(subject.stringValue)"
                }
            case .healthMindAndBody(let subject):
                switch subject {
                    case .healthMindAndBody: return subject.stringValue
                    default: return "\(HealthMindAndBody.healthMindAndBody.stringValue)|\(subject.stringValue)"
                }
            case .history(let subject):
                switch subject {
                    case .history: return subject.stringValue
                    default: return "\(History.history.stringValue)|\(subject.stringValue)"
                }
            case .languageStudies(let subject):
                switch subject {
                    case .languageStudies: return subject.stringValue
                    default: return "\(LanguageStudies.languageStudies.stringValue)|\(subject.stringValue)"
                }
            case .lifestyleAndHome(let subject):
                switch subject {
                    case .lifestyleAndHome: return subject.stringValue
                    default: return "\(LifestyleAndHome.lifestyleAndHome.stringValue)|\(subject.stringValue)"
                }
            case .mathematics(let subject):
                switch subject {
                    case .mathematics: return subject.stringValue
                    default: return "\(Mathematics.mathematics.stringValue)|\(subject.stringValue)"
                }
            case .medicine(let subject):
                switch subject {
                    case .medicine: return subject.stringValue
                    default: return "\(Medicine.medicine.stringValue)|\(subject.stringValue)"
                }
            case .mysteriesAndThrillers(let subject):
                switch subject {
                    case .mysteriesAndThrillers: return subject.stringValue
                    default: return "\(MysteriesAndThrillers.mysteriesAndThrillers.stringValue)|\(subject.stringValue)"
                }
            case .nonfiction(let subject):
                switch subject {
                    case .nonfiction: return subject.stringValue
                    default: return "\(Nonfiction.nonfiction.stringValue)|\(subject.stringValue)"
                }
            case .philosophy(let subject):
                switch subject {
                    case .philosophy: return subject.stringValue
                    default: return "\(Philosophy.philosophy.stringValue)|\(subject.stringValue)"
                }
            case .politicsAndCurrentEvents(let subject):
                switch subject {
                    case .politicsAndCurrentEvents: return subject.stringValue
                    default: return "\(PoliticsAndCurrentEvents.politicsAndCurrentEvents.stringValue)|\(subject.stringValue)"
                }
            case .professionalAndTechnical(let subject):
                switch subject {
                    case .professionalAndTechnical: return subject.stringValue
                    default: return "\(ProfessionalAndTechnical.professionalAndTechnical.stringValue)|\(subject.stringValue)"
                }
            case .reference(let subject):
                switch subject {
                    case .reference: return subject.stringValue
                    default: return "\(Reference.reference.stringValue)|\(subject.stringValue)"
                }
            case .religionAndSpirituality(let subject):
                switch subject {
                    case .religionAndSpirituality: return subject.stringValue
                    default: return "\(ReligionAndSpirituality.religionAndSpirituality.stringValue)|\(subject.stringValue)"
                }
            case .romance(let subject):
                switch subject {
                    case .romance: return subject.stringValue
                    default: return "\(Romance.romance.stringValue)|\(subject.stringValue)"
                }
            case .sciFiAndFantasy(let subject):
                switch subject {
                    case .sciFiAndFantasy: return subject.stringValue
                    default: return "\(SciFiAndFantasy.sciFiAndFantasy.stringValue)|\(subject.stringValue)"
                }
            case .scienceAndNature(let subject):
                switch subject {
                    case .scienceAndNature: return subject.stringValue
                    default: return "\(ScienceAndNature.scienceAndNature.stringValue)|\(subject.stringValue)"
                }
            case .socialScience(let subject):
                switch subject {
                    case .socialScience: return subject.stringValue
                    default: return "\(SocialScience.socialScience.stringValue)|\(subject.stringValue)"
                }
            case .society(let subject):
                switch subject {
                    case .society: return subject.stringValue
                    default: return "\(Society.society.stringValue)|\(subject.stringValue)"
                }
            case .sportsAndOutdoors(let subject):
                switch subject {
                    case .sportsAndOutdoors: return subject.stringValue
                    default: return "\(SportsAndOutdoors.sportsAndOutdoors.stringValue)|\(subject.stringValue)"
                }
            case .teachingAndLearning(let subject):
                switch subject {
                    case .teachingAndLearning: return subject.stringValue
                    default: return "\(TeachingAndLearning.teachingAndLearning.stringValue)|\(subject.stringValue)"
                }
            case .travelAndAdventure(let subject):
                switch subject {
                    case .travelAndAdventure: return subject.stringValue
                    default: return "\(TravelAndAdventure.travelAndAdventure.stringValue)|\(subject.stringValue)"
                }
        }
    }
    
    enum ArtsAndEntertainment: CaseIterable {
        case artsAndEntertainment
        case artHistory
        case dance
        case design
        case fashion
        case film
        case games
        case interiorDesign
        case mediaArts
        case music
        case performingArts
        case photography
        case theater
        case tv
        case visualArts
        case artAndArchitecture(ArtAndArchitecture)
        
        static var allCases: [ArtsAndEntertainment] {
            var array: [ArtsAndEntertainment] = [.artsAndEntertainment, .artHistory, .dance, .fashion, .film, .games, .interiorDesign, .mediaArts, .music, .photography, .photography, .theater, .tv, .visualArts]
            array.append(contentsOf: ArtAndArchitecture.allCases.map({ArtsAndEntertainment.artAndArchitecture($0)}))
            return array
        }
        
        var identifier: Int {
            switch self {
                case .artsAndEntertainment: return 15000
                case .artHistory: return 15003
                case .dance: return 15004
                case .design: return 15005
                case .fashion: return 15006
                case .film: return 15007
                case .games: return 15008
                case .interiorDesign: return 15009
                case .mediaArts: return 15010
                case .music: return 15011
                case .performingArts: return 15012
                case .photography: return 15013
                case .theater: return 15014
                case .tv: return 15015
                case .visualArts: return 15016
                case .artAndArchitecture(let subject): return subject.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .artsAndEntertainment: return "Arts & Entertainment"
                case .artHistory: return "Art History"
                case .dance: return "Dance"
                case .design: return "Design"
                case .fashion: return "Fashion"
                case .film: return "Film"
                case .games: return "Games"
                case .interiorDesign: return "Interior Design"
                case .mediaArts: return "Media Arts"
                case .music: return "Music"
                case .performingArts: return "Performing Arts"
                case .photography: return "Photography"
                case .theater: return "Theater"
                case .tv: return "TV"
                case .visualArts: return "Visual Arts"
                case .artAndArchitecture(let subject):
                    switch subject {
                        case .artAndArchitecture: return subject.stringValue
                        default: return "\(ArtAndArchitecture.artAndArchitecture.stringValue)|\(subject.stringValue)"
                    }
            }
        }
        
        enum ArtAndArchitecture: Int, CaseIterable {
            case artAndArchitecture = 15001
            case urbanPlanning = 15002
            
            var stringValue: String {
                switch self {
                    case .artAndArchitecture: return "Art & Architecture"
                    case .urbanPlanning: return "Urban Planning"
                }
            }
        }
    }
    
    enum BusinessAndPersonalFinance: Int, CaseIterable {
        case businessAndPersonalFinance = 15018
        case accounting = 15019
        case careers = 15020
        case economics = 15021
        case finance = 15022
        case hospitality = 15023
        case industriesAndProfessions = 15024
        case investing = 15025
        case managementAndLeadership = 15026
        case marketingAndSales = 15027
        case personalFinance = 15028
        case realEstate = 15029
        case reference = 15030
        case smallBusinessAndEntrepreneurship = 15031
        
        var stringValue: String {
            switch self {
                case .businessAndPersonalFinance: return "Business & Personal Finance"
                case .accounting: return "Accounting"
                case .careers: return "Careers"
                case .economics: return "Economics"
                case .finance: return "Finance"
                case .hospitality: return "Hospitality"
                case .industriesAndProfessions: return "Industries & Professions"
                case .investing: return "Investing"
                case .managementAndLeadership: return "Management & Leadership"
                case .marketingAndSales: return "Marketing & Sales"
                case .personalFinance: return "Personal Finance"
                case .realEstate: return "Real Estate"
                case .reference: return "Reference"
                case .smallBusinessAndEntrepreneurship: return "Small Business & Entrepreneurship"
            }
        }
    }
    
    enum ChildrenAndTeens: Int, CaseIterable {
        case childrenAndTeens = 15032
        case fiction = 15033
        case nonfiction = 15034
        
        var stringValue: String {
            switch self {
                case .childrenAndTeens: return "Children & Teens"
                case .fiction: return "Fiction"
                case .nonfiction: return "Nonfiction"
            }
        }
    }
    
    enum ComicsAndGraphicNovels: Int, CaseIterable {
        case comicsAndGraphicNovels = 15035
        case graphicNovels = 15036
        case manga = 15037
        case comics = 15311
        
        var stringValue: String {
            switch self {
                case .comicsAndGraphicNovels: return "Comics & Graphic Novels"
                case .graphicNovels: return "Graphic Novels"
                case .manga: return "Manga"
                case .comics: return "Comics"
            }
        }
    }
    
    enum CommunicationsAndMedia: Int, CaseIterable {
        case communicationsAndMedia = 15038
        case broadcasting = 15039
        case digitalMedia = 15040
        case journalism = 15041
        case photojournalism = 15042
        case print = 15043
        case speech = 15044
        case writing = 15045
        
        var stringValue: String {
            switch self {
                case .communicationsAndMedia: return "Communications & Media"
                case .broadcasting: return "Broadcasting"
                case .digitalMedia: return "Digital Media"
                case .journalism: return "Journalism"
                case .photojournalism: return "Photojournalism"
                case .print: return "Print"
                case .speech: return "Speech"
                case .writing: return "Writing"
            }
        }
    }
    
    enum ComputersAndInternet: Int, CaseIterable {
        case computersAndInternet = 15046
        case computers = 15047
        case databases = 15048
        case digitalMedia = 15049
        case internet = 15050
        case network = 15051
        case operatingSystems = 15052
        case programming = 15053
        case software = 15054
        case systemAdministration = 15055
        
        var stringValue: String {
            switch self {
                case .computersAndInternet: return "Computers & Internet"
                case .computers: return "Computers"
                case .databases: return "Databases"
                case .digitalMedia: return "Digital Media"
                case .internet: return "Internet"
                case .network: return "Network"
                case .operatingSystems: return "Operating Systems"
                case .programming: return "Programming"
                case .software: return "Software"
                case .systemAdministration: return "System Administration"
            }
        }
    }
    
    enum CookbooksFoodAndWine: Int, CaseIterable {
        case cookbooksFoodAndWine = 15056
        case beverages = 15057
        case coursesAndDishes = 15058
        case culinaryArts = 15059
        case methods = 15060
        case reference = 15061
        case regionalAndEthnic = 15062
        case specialDiet = 15063
        case specialOccasions = 15064
        case specificIngredients = 15065
        
        var stringValue: String {
            switch self {
                case .cookbooksFoodAndWine: return "Cookbooks, Food & Wine"
                case .beverages: return "Beverages"
                case .coursesAndDishes: return "Courses & Dishes"
                case .culinaryArts: return "Culinary Arts"
                case .methods: return "Methods"
                case .reference: return "Reference"
                case .regionalAndEthnic: return "Regional & Ethnic"
                case .specialDiet: return "Special Diet"
                case .specialOccasions: return "Special Occasions"
                case .specificIngredients: return "Specific Ingredients"
            }
        }
    }
    
    enum Engineering: Int, CaseIterable {
        case engineering = 15066
        case aeronautics = 15067
        case chemicalAndPetroleumEngineering = 15068
        case civilEngineering = 15069
        case computerScience = 15070
        case electricalEngineering = 15071
        case environmentalEngineering = 15072
        case mechanicalEngineering = 15073
        case powerResources = 15074
        
        var stringValue: String {
            switch self {
                case .engineering: return "Engineering"
                case .aeronautics: return "Aeronautics"
                case .chemicalAndPetroleumEngineering: return "Chemical & Petroleum Engineering"
                case .civilEngineering: return "Civil Engineering"
                case .computerScience: return "Computer Science"
                case .electricalEngineering: return "Electrical Engineering"
                case .environmentalEngineering: return "Environmental Engineering"
                case .mechanicalEngineering: return "Mechanical Engineering"
                case .powerResources: return "Power Resources"
            }
        }
    }
    
    enum FictionAndLiterature: Int, CaseIterable {
        case fictionAndLiterature = 15075
        case latino = 15076
        case actionAndAdventure = 15077
        case africanAmerican = 15078
        case anthologies = 15079
        case classics = 15080
        case comparativeLiterature = 15081
        case erotica = 15082
        case gay = 15083
        case ghost = 15084
        case historical = 15085
        case horror = 15086
        case literary = 15087
        case literaryCriticism = 15088
        case poetry = 15089
        case religious = 15090
        case shortStories = 15091
        
        var stringValue: String {
            switch self {
                case .fictionAndLiterature: return "Fiction & Literature"
                case .latino: return "Latino"
                case .actionAndAdventure: return "Action & Adventure"
                case .africanAmerican: return "African American"
                case .anthologies: return "Anthologies"
                case .classics: return "Classics"
                case .comparativeLiterature: return "Comparative Literature"
                case .erotica: return "Erotica"
                case .gay: return "Gay"
                case .ghost: return "Ghost"
                case .historical: return "Historical"
                case .horror: return "Horror"
                case .literary: return "Literary"
                case .literaryCriticism: return "Literary Criticism"
                case .poetry: return "Poetry"
                case .religious: return "Religious"
                case .shortStories: return "Short Stories"
            }
        }
    }
    
    enum HealthMindAndBody: Int, CaseIterable {
        case healthMindAndBody = 15092
        case fitness = 15093
        case selfImprovement = 15094
        
        var stringValue: String {
            switch self {
                case .healthMindAndBody: return "Health, Mind & Body"
                case .fitness: return "Fitness"
                case .selfImprovement: return "Self-Improvement"
            }
        }
    }
    
    enum History: CaseIterable {
        case history
        case africa
        case ancient
        case asia
        case australiaAndOceania
        case europe
        case middleEast
        case military
        case world
        case americas(Americas)
        
        static var allCases: [History] {
            var array: [History] = [.history, .africa, .ancient, .asia, .australiaAndOceania, .europe, .middleEast, .military, .world]
            array.append(contentsOf: Americas.allCases.map({History.americas($0)}))
            return array
        }
        
        var identifier: Int {
            switch self {
                case .history: return 15095
                case .africa: return 15096
                case .ancient: return 15101
                case .asia: return 15102
                case .australiaAndOceania: return 15103
                case .europe: return 15104
                case .middleEast: return 15105
                case .military: return 15106
                case .world: return 15107
                case .americas(let subject): return subject.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .history: return "History"
                case .africa: return "Africa"
                case .ancient: return "Ancient"
                case .asia: return "Asia"
                case .australiaAndOceania: return "Australia & Oceania"
                case .europe: return "Europe"
                case .middleEast: return "Middle East"
                case .military: return "Military"
                case .world: return "World"
                case .americas(let subject):
                    switch subject {
                        case .americas: return subject.stringValue
                        default: return "\(Americas.americas.stringValue)|\(subject.stringValue)"
                    }
            }
        }
        
        enum Americas: Int, CaseIterable {
            case americas = 15097
            case canada = 15098
            case latinAmerica = 15099
            case unitedStates = 15100
            
            var stringValue: String {
                switch self {
                    case .americas: return "Americas"
                    case .canada: return "Canada"
                    case .latinAmerica: return "Latin America"
                    case .unitedStates: return "United States"
                }
            }
        }
    }
    
    enum LanguageStudies: Int, CaseIterable {
        case languageStudies = 15109
        case africanLanguages = 15110
        case ancientLanguages = 15111
        case arabic = 15112
        case bilingualEditions = 15113
        case chinese = 15114
        case english = 15115
        case french = 15116
        case german = 15117
        case hebrew = 15118
        case hindi = 15119
        case indigenousLanguages = 15120
        case italian = 15121
        case japanese = 15122
        case korean = 15123
        case linguistics = 15124
        case otherLanguage = 15125
        case portuguese = 15126
        case russian = 15127
        case spanish = 15128
        case speechPathology = 15129
        
        var stringValue: String {
            switch self {
                case .languageStudies: return "Language Studies"
                case .africanLanguages: return "African Languages"
                case .ancientLanguages: return "Ancient Languages"
                case .arabic: return "Arabic"
                case .bilingualEditions: return "Bilingual Editions"
                case .chinese: return "Chinese"
                case .english: return "English"
                case .french: return "French"
                case .german: return "German"
                case .hebrew: return "Hebrew"
                case .hindi: return "Hindi"
                case .indigenousLanguages: return "Indigenous Languages"
                case .italian: return "Italian"
                case .japanese: return "Japanese"
                case .korean: return "Korean"
                case .linguistics: return "Linguistics"
                case .otherLanguage: return "Other Language"
                case .portuguese: return "Portuguese"
                case .russian: return "Russian"
                case .spanish: return "Spanish"
                case .speechPathology: return "Speech Pathology"
            }
        }
    }
    
    enum LifestyleAndHome: Int, CaseIterable {
        case lifestyleAndHome = 15130
        case antiquesAndCollectibles = 15131
        case craftsAndHobbies = 15132
        case gardening = 15133
        case pets = 15134
        
        var stringValue: String {
            switch self {
                case .lifestyleAndHome: return "Lifestyle & Home"
                case .antiquesAndCollectibles: return "Antiques & Collectibles"
                case .craftsAndHobbies: return "Crafts & Hobbies"
                case .gardening: return "Gardening"
                case .pets: return "Pets"
            }
        }
    }
    
    enum Mathematics: Int, CaseIterable {
        case mathematics = 15135
        case advancedMathematics = 15136
        case algebra = 15137
        case arithmetic = 15138
        case calculus = 15139
        case geometry = 15140
        case statistics = 15141
        
        var stringValue: String {
            switch self {
                case .mathematics: return "Mathematics"
                case .advancedMathematics: return "Advanced Mathematics"
                case .algebra: return "Algebra"
                case .arithmetic: return "Arithmetic"
                case .calculus: return "Calculus"
                case .geometry: return "Geometry"
                case .statistics: return "Statistics"
            }
        }
    }
    
    enum Medicine: Int, CaseIterable {
        case medicine = 15142
        case anatomyAndPhysiology = 15143
        case dentistry = 15144
        case emergencyMedicine = 15145
        case genetics = 15146
        case immunology = 15147
        case neuroscience = 15148
        case nursing = 15149
        case pharmacologyAndToxicology = 15150
        case psychiatry = 15151
        case psychology = 15152
        case radiology = 15153
        case veterinary = 15154
        
        var stringValue: String {
            switch self {
                case .medicine: return "Medicine"
                case .anatomyAndPhysiology: return "Anatomy & Physiology"
                case .dentistry: return "Dentistry"
                case .emergencyMedicine: return "Emergency Medicine"
                case .genetics: return "Genetics"
                case .immunology: return "Immunology"
                case .neuroscience: return "Neuroscience"
                case .nursing: return "Nursing"
                case .pharmacologyAndToxicology: return "Pharmacology & Toxicology"
                case .psychiatry: return "Psychiatry"
                case .psychology: return "Psychology"
                case .radiology: return "Radiology"
                case .veterinary: return "Veterinary"
            }
        }
    }
    
    enum MysteriesAndThrillers: Int, CaseIterable {
        case mysteriesAndThrillers = 15155
        case britishDetectives = 15156
        case hardBoiled = 15157
        case historical = 15158
        case policeProcedural = 15159
        case shortStories = 15160
        case womenSleuths = 15161
        
        var stringValue: String {
            switch self {
                case .mysteriesAndThrillers: return "Mysteries & Thrillers"
                case .britishDetectives: return "British Detectives"
                case .hardBoiled: return "Hard-Boiled"
                case .historical: return "Historical"
                case .policeProcedural: return "Police Procedural"
                case .shortStories: return "Short Stories"
                case .womenSleuths: return "Women Sleuths"
            }
        }
    }
    
    enum Nonfiction: Int, CaseIterable {
        case nonfiction = 15162
        case familyAndRelationships = 15163
        case transportation = 15164
        case trueCrime = 15165
        
        var stringValue: String {
            switch self {
                case .nonfiction: return "Nonfiction"
                case .familyAndRelationships: return "Family & Relationships"
                case .transportation: return "Transportation"
                case .trueCrime: return "True Crime"
            }
        }
    }
    
    enum Philosophy: Int, CaseIterable {
        case philosophy = 15167
        case aesthetics = 15168
        case epistemology = 15169
        case ethics = 15170
        case philosophyOfLanguage = 15171
        case logic = 15172
        case metaphysics = 15173
        case politicalPhilosophy = 15174
        case philosophyOfReligion = 15175
        
        var stringValue: String {
            switch self {
                case .philosophy: return "Philosophy"
                case .aesthetics: return "Aesthetics"
                case .epistemology: return "Epistemology"
                case .ethics: return "Ethics"
                case .philosophyOfLanguage: return "Philosophy of Language"
                case .logic: return "Logic"
                case .metaphysics: return "Metaphysics"
                case .politicalPhilosophy: return "Political Philosophy"
                case .philosophyOfReligion: return "Philosophy of Religion"
            }
        }
    }
    
    enum PoliticsAndCurrentEvents: Int, CaseIterable {
        case politicsAndCurrentEvents = 15176
        case currentEvents = 15177
        case foreignPolicyAndInternationalRelations = 15178
        case localGovernments = 15179
        case nationalGovernments = 15180
        case politicalScience = 15181
        case publicAdministration = 15182
        case worldAffairs = 15183
        
        var stringValue: String {
            switch self {
                case .politicsAndCurrentEvents: return "Politics & Current Events"
                case .currentEvents: return "Current Events"
                case .foreignPolicyAndInternationalRelations: return "Foreign Policy & International Relations"
                case .localGovernments: return "Local Governments"
                case .nationalGovernments: return "National Governments"
                case .politicalScience: return "Political Science"
                case .publicAdministration: return "Public Administration"
                case .worldAffairs: return "World Affairs"
            }
        }
    }
    
    enum ProfessionalAndTechnical: Int, CaseIterable {
        case professionalAndTechnical = 15184
        case design = 15185
        case languageArtsAndDisciplines = 15186
        case engineering = 15187
        case law = 15188
        case medical = 15189
        
        var stringValue: String {
            switch self {
                case .professionalAndTechnical: return "Professional & Technical"
                case .design: return "Design"
                case .languageArtsAndDisciplines: return "Language Arts & Disciplines"
                case .engineering: return "Engineering"
                case .law: return "Law"
                case .medical: return "Medical"
            }
        }
    }
    
    enum Reference: Int, CaseIterable {
        case reference = 15190
        case almanacsAndYearbooks = 15191
        case atlasesAndMaps = 15192
        case catalogsAndDirectories = 15193
        case consumerGuides = 15194
        case dictionariesAndThesauruses = 15195
        case encyclopedias = 15196
        case etiquette = 15197
        case Quotations = 15198
        case studyAids = 15199
        case wordsAndLanguage = 15200
        case writing = 15201
        case manuals = 15312
        
        var stringValue: String {
            switch self {
                case .reference: return "Reference"
                case .almanacsAndYearbooks: return "Almanacs & Yearbooks"
                case .atlasesAndMaps: return "Atlases & Maps"
                case .catalogsAndDirectories: return "Catalogs & Directories"
                case .consumerGuides: return "Consumer Guides"
                case .dictionariesAndThesauruses: return "Dictionaries & Thesauruses"
                case .encyclopedias: return "Encyclopedias"
                case .etiquette: return "Etiquette"
                case .Quotations: return "Quotations"
                case .studyAids: return "Study Aids"
                case .wordsAndLanguage: return "Words & Language"
                case .writing: return "Writing"
                case .manuals: return "Manuals"
            }
        }
    }
    
    enum ReligionAndSpirituality: Int, CaseIterable {
        case religionAndSpirituality = 15202
        case bibleStudies = 15203
        case bibles = 15204
        case buddhism = 15205
        case christianity = 15206
        case comparativeReligion = 15207
        case hinduism = 15208
        case islam = 15209
        case judaism = 15210
        case spirituality = 15211
        
        var stringValue: String {
            switch self {
                case .religionAndSpirituality: return "Religion & Spirituality"
                case .bibleStudies: return "Bible Studies"
                case .bibles: return "Bibles"
                case .buddhism: return "Buddhism"
                case .christianity: return "Christianity"
                case .comparativeReligion: return "Comparative Religion"
                case .hinduism: return "Hinduism"
                case .islam: return "Islam"
                case .judaism: return "Judaism"
                case .spirituality: return "Spirituality"
            }
        }
    }
    
    enum Romance: Int, CaseIterable {
        case romance = 15212
        case contemporary = 15213
        case eroticRomance = 15214
        case paranormal = 15215
        case historical = 15216
        case shortStories = 15217
        case suspense = 15218
        case western = 15219
        
        var stringValue: String {
            switch self {
                case .romance: return "Romance"
                case .contemporary: return "Contemporary"
                case .eroticRomance: return "Erotic Romance"
                case .paranormal: return "Paranormal"
                case .historical: return "Historical"
                case .shortStories: return "Short Stories"
                case .suspense: return "Suspense"
                case .western: return "Western"
            }
        }
    }
    
    enum SciFiAndFantasy: CaseIterable {
        case sciFiAndFantasy
        case scienceFiction
        case fantasy(Fantasy)
        case scienceFictionAndLiterature(ScienceFictionAndLiterature)
        
        static var allCases: [SciFiAndFantasy] {
            var array: [SciFiAndFantasy] = [.sciFiAndFantasy, .scienceFiction]
            array.append(contentsOf: Fantasy.allCases.map({SciFiAndFantasy.fantasy($0)}))
            array.append(contentsOf: ScienceFictionAndLiterature.allCases.map({SciFiAndFantasy.scienceFictionAndLiterature($0)}))
            return array
        }
        
        var identifier: Int {
            switch self {
                case .sciFiAndFantasy: return 15220
                case .scienceFiction: return 15227
                case .fantasy(let subject): return subject.rawValue
                case .scienceFictionAndLiterature(let subject): return subject.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .sciFiAndFantasy: return "Sci-Fi & Fantasy"
                case .scienceFiction: return "Science Fiction"
                case .fantasy(let subject):
                    switch subject {
                        case .fantasy: return subject.stringValue
                        default: return "\(Fantasy.fantasy.stringValue)|\(subject.stringValue)"
                    }
                case .scienceFictionAndLiterature(let subject):
                    switch subject {
                        case .scienceFictionAndLiterature: return subject.stringValue
                        default: return "\(ScienceFictionAndLiterature.scienceFictionAndLiterature.stringValue)|\(subject.stringValue)"
                    }
            }
        }
        
        enum Fantasy: Int, CaseIterable {
            case fantasy = 15221
            case contemporary = 15222
            case epic = 15223
            case historical = 15224
            case paranormal = 15225
            case shortStories = 15226
            
            var stringValue: String {
                switch self {
                    case .fantasy: return "Fantasy"
                    case .contemporary: return "Contemporary"
                    case .epic: return "Epic"
                    case .historical: return "Historical"
                    case .paranormal: return "Paranormal"
                    case .shortStories: return "Short Stories"
                }
            }
        }
        
        enum ScienceFictionAndLiterature: Int, CaseIterable {
            case scienceFictionAndLiterature = 15228
            case adventure = 15229
            case highTech = 15230
            case shortStories = 15231
            
            var stringValue: String {
                switch self {
                    case .scienceFictionAndLiterature: return "Science Fiction & Literature"
                    case .adventure: return "Adventure"
                    case .highTech: return "High Tech"
                    case .shortStories: return "Short Stories"
                }
            }
        }
    }
    
    enum ScienceAndNature: Int, CaseIterable {
        case scienceAndNature = 15232
        case agriculture = 15233
        case astronomy = 15234
        case atmosphere = 15235
        case biology = 15236
        case chemistry = 15237
        case earthSciences = 15238
        case ecology = 15239
        case environment = 15240
        case essays = 15241
        case geography = 15242
        case geology = 15243
        case history = 15244
        case lifeSciences = 15245
        case nature = 15246
        case physics = 15247
        case reference = 15248
        
        var stringValue: String {
            switch self {
                case .scienceAndNature: return "Science & Nature"
                case .agriculture: return "Agriculture"
                case .astronomy: return "Astronomy"
                case .atmosphere: return "Atmosphere"
                case .biology: return "Biology"
                case .chemistry: return "Chemistry"
                case .earthSciences: return "Earth Sciences"
                case .ecology: return "Ecology"
                case .environment: return "Environment"
                case .essays: return "Essays"
                case .geography: return "Geography"
                case .geology: return "Geology"
                case .history: return "History"
                case .lifeSciences: return "Life Sciences"
                case .nature: return "Nature"
                case .physics: return "Physics"
                case .reference: return "Reference"
            }
        }
    }
    
    enum SocialScience: Int, CaseIterable {
        case socialScience = 15249
        case anthropology = 15250
        case archaeology = 15251
        case civics = 15252
        case government = 15253
        case socialStudies = 15254
        case socialWelfare = 15255
        case sociology = 15269
        
        var stringValue: String {
            switch self {
                case .socialScience: return "Social Science"
                case .anthropology: return "Anthropology"
                case .archaeology: return "Archaeology"
                case .civics: return "Civics"
                case .government: return "Government"
                case .socialStudies: return "Social Studies"
                case .socialWelfare: return "Social Welfare"
                case .sociology: return "Sociology"
            }
        }
    }
    
    enum Society: Int, CaseIterable {
        case society = 15256
        case africanStudies = 15257
        case americanStudies = 15258
        case asiaPacificStudies = 15259
        case crossCulturalStudies = 15260
        case europeanStudies = 15261
        case immigrationAndEmigration = 15262
        case indigenousStudies = 15263
        case latinAndCaribbeanStudies = 15264
        case middleEasternStudies = 15265
        case raceAndEthnicityStudies = 15266
        case sexualityStudies = 15267
        case womensStudies = 15268
        
        var stringValue: String {
            switch self {
                case .society: return "Society"
                case .africanStudies: return "African Studies"
                case .americanStudies: return "American Studies"
                case .asiaPacificStudies: return "Asia Pacific Studies"
                case .crossCulturalStudies: return "Cross-Cultural Studies"
                case .europeanStudies: return "European Studies"
                case .immigrationAndEmigration: return "Immigration & Emigration"
                case .indigenousStudies: return "Indigenous Studies"
                case .latinAndCaribbeanStudies: return "Latin & Caribbean Studies"
                case .middleEasternStudies: return "Middle Eastern Studies"
                case .raceAndEthnicityStudies: return "Race & Ethnicity Studies"
                case .sexualityStudies: return "Sexuality Studies"
                case .womensStudies: return "Women's Studies"
            }
        }
    }
    
    enum SportsAndOutdoors: Int, CaseIterable {
        case sportsAndOutdoors = 15270
        case baseball = 15271
        case basketball = 15272
        case coaching = 15273
        case equestrian = 15274
        case extremeSports = 15275
        case football = 15276
        case golf = 15277
        case hockey = 15278
        case motorSports = 15279
        case mountaineering = 15280
        case outdoors = 15281
        case racketSports = 15282
        case reference = 15283
        case soccer = 15284
        case training = 15285
        case waterSports = 15286
        case winterSports = 15287
        
        var stringValue: String {
            switch self {
                case .sportsAndOutdoors: return "Sports & Outdoors"
                case .baseball: return "Baseball"
                case .basketball: return "Basketball"
                case .coaching: return "Coaching"
                case .equestrian: return "Equestrian"
                case .extremeSports: return "Extreme Sports"
                case .football: return "Football"
                case .golf: return "Golf"
                case .hockey: return "Hockey"
                case .motorSports: return "Motor Sports"
                case .mountaineering: return "Mountaineering"
                case .outdoors: return "Outdoors"
                case .racketSports: return "Racket Sports"
                case .reference: return "Reference"
                case .soccer: return "Soccer"
                case .training: return "Training"
                case .waterSports: return "Water Sports"
                case .winterSports: return "Winter Sports"
            }
        }
    }
    
    enum TeachingAndLearning: Int, CaseIterable {
        case teachingAndLearning = 15288
        case adultEducation = 15289
        case curriculumAndTeaching = 15290
        case educationalLeadership = 15291
        case educationalTechnology = 15292
        case familyAndChildcare = 15293
        case informationAndLibraryScience = 15294
        case learningResources = 15295
        case psychologyAndResearch = 15296
        case specialEducation = 15297
        
        var stringValue: String {
            switch self {
                case .teachingAndLearning: return "Teaching & Learning"
                case .adultEducation: return "Adult Education"
                case .curriculumAndTeaching: return "Curriculum & Teaching"
                case .educationalLeadership: return "Educational Leadership"
                case .educationalTechnology: return "Educational Technology"
                case .familyAndChildcare: return "Family & Childcare"
                case .informationAndLibraryScience: return "Information & Library Science"
                case .learningResources: return "Learning Resources"
                case .psychologyAndResearch: return "Psychology & Research"
                case .specialEducation: return "Special Education"
            }
        }
    }
    
    enum TravelAndAdventure: CaseIterable {
        case travelAndAdventure
        case africa
        case asia
        case caribbean
        case essaysAndMemoirs
        case europe
        case middleEast
        case oceania
        case specialtyTravel
        case americas(Americas)
        
        static var allCases: [TravelAndAdventure] {
            var array: [TravelAndAdventure] = [.travelAndAdventure, .africa, .asia, .caribbean, .essaysAndMemoirs, .europe, .middleEast, .oceania, .specialtyTravel]
            array.append(contentsOf: Americas.allCases.map({TravelAndAdventure.americas($0)}))
            return array
        }
        
        var identifier: Int {
            switch self {
                case .travelAndAdventure: return 15298
                case .africa: return 15299
                case .asia: return 15304
                case .caribbean: return 15305
                case .essaysAndMemoirs: return 15306
                case .europe: return 15307
                case .middleEast: return 15308
                case .oceania: return 15309
                case .specialtyTravel: return 15310
                case .americas(let subject): return subject.rawValue
            }
        }
        
        var stringValue: String {
            switch self {
                case .travelAndAdventure: return "Travel & Adventure"
                case .africa: return "Africa"
                case .asia: return "Asia"
                case .caribbean: return "Caribbean"
                case .essaysAndMemoirs: return "Essays & Memoirs"
                case .europe: return "Europe"
                case .middleEast: return "Middle East"
                case .oceania: return "Oceania"
                case .specialtyTravel: return "Specialty Travel"
                case .americas(let subject):
                    switch subject {
                        case .americas: return subject.stringValue
                        default: return "\(Americas.americas.stringValue)|\(subject.stringValue)"
                    }
            }
        }
        
        enum Americas: Int, CaseIterable {
            case americas = 15300
            case canada = 15301
            case latinAmerica = 15302
            case unitedStates = 15303
            
            var stringValue: String {
                switch self {
                    case .americas: return "Americas"
                    case .canada: return "Canada"
                    case .latinAmerica: return "Latin America"
                    case .unitedStates: return "United States"
                }
            }
        }
    }
}
