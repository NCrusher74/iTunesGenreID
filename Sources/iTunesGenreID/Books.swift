//
//  Books.swift
//  
//
//  Created by Nolaine Crusher on 10/19/20.
//

import Foundation
public enum Books: CaseIterable {
    case books
    case parenting
    case militaryAndWarfare
    case nonfiction(Nonfiction)
    case romance(Romance)
    case travelAndAdventure(TravelAndAdventure)
    case artsAndEntertainment(ArtsAndEntertainment)
    case biographiesAndMemoirs(BiographiesAndMemoirs)
    case businessAndPersonalFinance(BusinessAndPersonalFinance)
    case childrenAndTeens(ChildrenAndTeens)
    case humor(Humor)
    case history(History)
    case religionAndSpirituality(ReligionAndSpirituality)
    case scienceAndNature(ScienceAndNature)
    case sciFiAndFantasy(SciFiAndFantasy)
    case lifestyleAndHome(LifestyleAndHome)
    case selfDevelopment(SelfDevelopment)
    case comicsAndGraphicNovels(ComicsAndGraphicNovels)
    case computersAndInternet(ComputersAndInternet)
    case cookbooksFoodAndWine(CookbooksFoodAndWine)
    case professsionalAndTechnical(ProfessionalAndTechnical)
    case fictionAndLiterature(FictionAndLiterature)
    case mysteriesAndThrillers(MysteriesAndThrillers)
    case reference(Reference)
    case politicsAndCurrentEvents(PoliticsAndCurrentEvents)
    case sportsAndOutdoors(SportsAndOutdoors)
    case communicationsAndMedia(CommunicationsAndMedia)
    case kids(Kids)
    case youngAdult(YoungAdult)
    
    public static var allCases: [Books] {
        var array: [Books] = [.books, .parenting, .militaryAndWarfare]
        array.append(contentsOf: Nonfiction.allCases.map({ Books.nonfiction($0)}))
        array.append(contentsOf: Romance.allCases.map({Books.romance($0)}))
        array.append(contentsOf: TravelAndAdventure.allCases.map({Books.travelAndAdventure($0)}))
        array.append(contentsOf: ArtsAndEntertainment.allCases.map({Books.artsAndEntertainment($0)}))
        array.append(contentsOf: BiographiesAndMemoirs.allCases.map({Books.biographiesAndMemoirs($0)}))
        array.append(contentsOf: BusinessAndPersonalFinance.allCases.map({Books.businessAndPersonalFinance($0)}))
        array.append(contentsOf: ChildrenAndTeens.allCases.map({Books.childrenAndTeens($0)}))
        array.append(contentsOf: Humor.allCases.map({Books.humor($0)}))
        array.append(contentsOf: History.allCases.map({Books.history($0)}))
        array.append(contentsOf: ReligionAndSpirituality.allCases.map({Books.religionAndSpirituality($0)}))
        array.append(contentsOf: ScienceAndNature.allCases.map({Books.scienceAndNature($0)}))
        array.append(contentsOf: SciFiAndFantasy.allCases.map({Books.sciFiAndFantasy($0)}))
        array.append(contentsOf: LifestyleAndHome.allCases.map({Books.lifestyleAndHome($0)}))
        array.append(contentsOf: SelfDevelopment.allCases.map({Books.selfDevelopment($0)}))
        array.append(contentsOf: ComicsAndGraphicNovels.allCases.map({Books.comicsAndGraphicNovels($0)}))
        array.append(contentsOf: ComputersAndInternet.allCases.map({Books.computersAndInternet($0)}))
        array.append(contentsOf: CookbooksFoodAndWine.allCases.map({Books.cookbooksFoodAndWine($0)}))
        array.append(contentsOf: ProfessionalAndTechnical.allCases.map({Books.professsionalAndTechnical($0)}))
        array.append(contentsOf: FictionAndLiterature.allCases.map({Books.fictionAndLiterature($0)}))
        array.append(contentsOf: MysteriesAndThrillers.allCases.map({Books.mysteriesAndThrillers($0)}))
        array.append(contentsOf: Reference.allCases.map({Books.reference($0)}))
        array.append(contentsOf: PoliticsAndCurrentEvents.allCases.map({Books.politicsAndCurrentEvents($0)}))
        array.append(contentsOf: SportsAndOutdoors.allCases.map({Books.sportsAndOutdoors($0)}))
        array.append(contentsOf: CommunicationsAndMedia.allCases.map({Books.communicationsAndMedia($0)}))
        array.append(contentsOf: Kids.allCases.map({Books.kids($0)}))
        array.append(contentsOf: YoungAdult.allCases.map({Books.youngAdult($0)}))
        return array
    }
    
    public var identifier: Int {
        switch self {
            case .books: return 38
            case .parenting: return 9030
            case .militaryAndWarfare: return 11228
            case .nonfiction(let genre): return genre.identifier
            case .romance(let genre): return genre.rawValue
            case .travelAndAdventure(let genre): return genre.rawValue
            case .artsAndEntertainment(let genre): return genre.identifier
            case .biographiesAndMemoirs(let genre): return genre.rawValue
            case .businessAndPersonalFinance(let genre): return genre.rawValue
            case .childrenAndTeens(let genre): return genre.rawValue
            case .humor(let genre): return genre.rawValue
            case .history(let genre): return genre.rawValue
            case .religionAndSpirituality(let genre): return genre.rawValue
            case .scienceAndNature(let genre): return genre.identifier
            case .sciFiAndFantasy(let genre): return genre.identifier
            case .lifestyleAndHome(let genre): return genre.rawValue
            case .selfDevelopment(let genre): return genre.rawValue
            case .comicsAndGraphicNovels(let genre): return genre.identifier
            case .computersAndInternet(let genre): return genre.rawValue
            case .cookbooksFoodAndWine(let genre): return genre.rawValue
            case .professsionalAndTechnical(let genre): return genre.identifier
            case .fictionAndLiterature(let genre): return genre.rawValue
            case .mysteriesAndThrillers(let genre): return genre.rawValue
            case .reference(let genre): return genre.identifier
            case .politicsAndCurrentEvents(let genre): return genre.rawValue
            case .sportsAndOutdoors(let genre): return genre.rawValue
            case .communicationsAndMedia(let genre): return genre.rawValue
            case .kids(let genre): return genre.identifier
            case .youngAdult(let genre): return genre.identifier
        }
    }
    
    public var stringValue: String {
        switch self {
            case .books: return "Books"
            case .parenting: return "Parenting"
            case .militaryAndWarfare: return "Military & Warfare"
            case .nonfiction(let genre):
                switch genre {
                    case .nonfiction: return genre.stringValue
                    default: return "\(Nonfiction.nonfiction.stringValue)|\(genre.stringValue)"
                }
            case .romance(let genre):
                switch genre {
                    case .romance: return genre.stringValue
                    default: return "\(Romance.romance.stringValue)|\(genre.stringValue)"
                }
            case .travelAndAdventure(let genre):
                switch genre {
                    case .travelAndAdventure: return genre.stringValue
                    default: return "\(TravelAndAdventure.travelAndAdventure.stringValue)|\(genre.stringValue)"
                }
            case .artsAndEntertainment(let genre):
                switch genre {
                    case .artsAndEntertainment: return genre.stringValue
                    default: return "\(ArtsAndEntertainment.artsAndEntertainment.stringValue)|\(genre.stringValue)"
                }
            case .biographiesAndMemoirs(let genre):
                switch genre {
                    case .biographiesAndMemoirs: return genre.stringValue
                    default: return "\(BiographiesAndMemoirs.biographiesAndMemoirs.stringValue)|\(genre.stringValue)"
                }
            case .businessAndPersonalFinance(let genre):
                switch genre {
                    case .businessAndPersonalFinance: return genre.stringValue
                    default: return "\(BusinessAndPersonalFinance.businessAndPersonalFinance.stringValue)|\(genre.stringValue)"
                }
            case .childrenAndTeens(let genre):
                switch genre {
                    case .childrenAndTeens: return genre.stringValue
                    default: return "\(ChildrenAndTeens.childrenAndTeens.stringValue)|\(genre.stringValue)"
                }
            case .humor(let genre):
                switch genre {
                    case .humor: return genre.stringValue
                    default: return "\(Humor.humor.stringValue)|\(genre.stringValue)"
                }
            case .history(let genre):
                switch genre {
                    case .history: return genre.stringValue
                    default: return "\(History.history.stringValue)|\(genre.stringValue)"
                }
            case .religionAndSpirituality(let genre):
                switch genre {
                    case .religionAndSpirituality: return genre.stringValue
                    default: return "\(ReligionAndSpirituality.religionAndSpirituality.stringValue)|\(genre.stringValue)"
                }
            case .scienceAndNature(let genre):
                switch genre {
                    case .scienceAndNature: return genre.stringValue
                    default: return "\(ScienceAndNature.scienceAndNature.stringValue)|\(genre.stringValue)"
                }
            case .sciFiAndFantasy(let genre):
                switch genre {
                    case .sciFiAndFantasy: return genre.stringValue
                    default: return "\(SciFiAndFantasy.sciFiAndFantasy.stringValue)|\(genre.stringValue)"
                }
            case .lifestyleAndHome(let genre):
                switch genre {
                    case .lifestyleAndHome: return genre.stringValue
                    default: return "\(LifestyleAndHome.lifestyleAndHome.stringValue)|\(genre.stringValue)"
                }
            case .selfDevelopment(let genre):
                switch genre {
                    case .selfDevelopment: return genre.stringValue
                    default: return "\(SelfDevelopment.selfDevelopment.stringValue)|\(genre.stringValue)"
                }
            case .comicsAndGraphicNovels(let genre):
                switch genre {
                    case .comicsAndGraphicNovels: return genre.stringValue
                    default: return "\(ComicsAndGraphicNovels.comicsAndGraphicNovels.stringValue)|\(genre.stringValue)"
                }
            case .computersAndInternet(let genre):
                switch genre {
                    case .computersAndInternet: return genre.stringValue
                    default: return "\(ComputersAndInternet.computersAndInternet.stringValue)|\(genre.stringValue)"
                }
            case .cookbooksFoodAndWine(let genre):
                switch genre {
                    case .cookbooksFoodAndWine: return genre.stringValue
                    default: return "\(CookbooksFoodAndWine.cookbooksFoodAndWine.stringValue)|\(genre.stringValue)"
                }
            case .professsionalAndTechnical(let genre):
                switch genre {
                    case .professionalAndTechnical: return genre.stringValue
                    default: return "\(ProfessionalAndTechnical.professionalAndTechnical.stringValue)|\(genre.stringValue)"
                }
            case .fictionAndLiterature(let genre):
                switch genre {
                    case .fictionAndLiterature: return genre.stringValue
                    default: return "\(FictionAndLiterature.fictionAndLiterature.stringValue)|\(genre.stringValue)"
                }
            case .mysteriesAndThrillers(let genre):
                switch genre {
                    case .mysteriesAndThrillers: return genre.stringValue
                    default: return "\(MysteriesAndThrillers.mysteriesAndThrillers.stringValue)|\(genre.stringValue)"
                }
            case .reference(let genre):
                switch genre {
                    case .reference: return genre.stringValue
                    default: return "\(Reference.reference.stringValue)|\(genre.stringValue)"
                }
            case .politicsAndCurrentEvents(let genre):
                switch genre {
                    case .politicsAndCurrentEvents: return genre.stringValue
                    default: return "\(PoliticsAndCurrentEvents.politicsAndCurrentEvents.stringValue)|\(genre.stringValue)"
                }
            case .sportsAndOutdoors(let genre):
                switch genre {
                    case .sportsAndOutdoors: return genre.stringValue
                    default: return "\(SportsAndOutdoors.sportsAndOutdoors.stringValue)|\(genre.stringValue)"
                }
            case .communicationsAndMedia(let genre):
                switch genre {
                    case .communicationsAndMedia: return genre.stringValue
                    default: return "\(CommunicationsAndMedia.communicationsAndMedia.stringValue)|\(genre.stringValue)"
                }
            case .kids(let genre):
                switch genre {
                    case .kids: return genre.stringValue
                    default: return "\(Kids.kids.stringValue)|\(genre.stringValue)"
                }
            case .youngAdult(let genre):
                switch genre {
                    case .youngAdult: return genre.stringValue
                    default: return "\(YoungAdult.youngAdult.stringValue)|\(genre.stringValue)"
                }
        }
    }
    
    public enum Nonfiction: CaseIterable {
        case nonfiction
        case transportation
        case trueCrime
        case familyAndRelationships(FamilyAndRelationships)
        case philosophy(Philosophy)
        case socialScience(SocialScience)
        
        public static var allCases: [Nonfiction] {
            var array: [Nonfiction] = [.nonfiction, .transportation, .trueCrime]
            array.append(contentsOf: FamilyAndRelationships.allCases.map({Nonfiction.familyAndRelationships($0)}))
            array.append(contentsOf: Philosophy.allCases.map({Nonfiction.philosophy($0)}))
            array.append(contentsOf: SocialScience.allCases.map({Nonfiction.socialScience($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .nonfiction: return 9002
                case .transportation: return 10138
                case .trueCrime: return 10149
                case .familyAndRelationships(let genre): return genre.rawValue
                case .philosophy(let genre): return genre.rawValue
                case .socialScience(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .nonfiction:return "Nonfiction"
                case .transportation:return "Transportation"
                case .trueCrime:return "True Crime"
                case .familyAndRelationships(let genre):
                    switch genre {
                        case .familyAndRelationships: return genre.stringValue
                        default: return "\(FamilyAndRelationships.familyAndRelationships.stringValue)|\(genre.stringValue)"
                    }
                case .philosophy(let genre):
                    switch genre {
                        case .philosophy: return genre.stringValue
                        default: return "\(Philosophy.philosophy.stringValue)|\(genre.stringValue)"
                    }
                case .socialScience(let genre):
                    switch genre {
                        case .socialScience: return genre.stringValue
                        default: return "\(SocialScience.socialScience.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum FamilyAndRelationships: Int, CaseIterable {
            case familyAndRelationships = 10038
            case FamilyAndChildcare = 11273
            case LoveAndRomance = 11274
            
            public var stringValue: String {
                switch self {
                    case .familyAndRelationships:return "Family & Relationships"
                    case .FamilyAndChildcare:return "Family & Relationships|Family & Childcare"
                    case .LoveAndRomance:return "Family & Relationships|Love & Romance"
                }
            }
        }
        
        public enum Philosophy: Int, CaseIterable {
            case philosophy = 10091
            case aesthetics = 11077
            case epistemology = 11078
            case ethics = 11079
            case language = 11080
            case logic = 11081
            case metaphysics = 11082
            case political = 11083
            case religion = 11084
            case politicalPhilosophy = 11317
            case philosophyOfLanguage = 11319
            case philosophyOfReligion = 11320
            
            public var stringValue: String {
                switch self {
                    case .philosophy:return "Philosophy"
                    case .aesthetics:return "Aesthetics"
                    case .epistemology:return "Epistemology"
                    case .ethics:return "Ethics"
                    case .language:return "Language"
                    case .logic:return "Logic"
                    case .metaphysics:return "Metaphysics"
                    case .political:return "Political"
                    case .religion:return "Religion"
                    case .politicalPhilosophy:return "Political Philosophy"
                    case .philosophyOfLanguage:return "Philosophy of Language"
                    case .philosophyOfReligion:return "Philosophy of Religion"
                }
            }
        }
        
        public enum SocialScience: Int, CaseIterable {
            case socialScience = 10120
            case anthropology = 11070
            case archaeology = 11071
            case civics = 11072
            case government = 11073
            case socialStudies = 11074
            case socialWelfare = 11075
            case society = 11076
            case sociology = 11327
            
            public var stringValue: String {
                switch self {
                    case .socialScience:return "Social Science"
                    case .anthropology:return "Anthropology"
                    case .archaeology:return "Archaeology"
                    case .civics:return "Civics"
                    case .government:return "Government"
                    case .socialStudies:return "Social Studies"
                    case .socialWelfare:return "Social Welfare"
                    case .society:return "Society"
                    case .sociology:return "Sociology"
                }
            }
        }
    }
    
    public enum Romance: Int, CaseIterable {
        case romance = 9003
        case eroticRomance = 10056
        case contemporary = 10057
        case paranormal = 10058
        case historical = 10059
        case shortStories = 10060
        case suspense = 10061
        case western = 10062
        case newAdult = 11040
        case romanticComedy = 11042
        case gayAndLesbian = 11043
        case inspirational = 11229
        case holiday = 11231
        case wholesome = 11232
        case military = 11233
        case multicultural = 50000091
        
        public var stringValue: String {
            switch self {
                case .romance:return "Romance"
                case .eroticRomance:return "Erotic Romance"
                case .contemporary:return "Contemporary"
                case .paranormal:return "Paranormal"
                case .historical:return "Historical"
                case .shortStories:return "Short Stories"
                case .suspense:return "Suspense"
                case .western:return "Western"
                case .newAdult:return "New Adult"
                case .romanticComedy:return "Romantic Comedy"
                case .gayAndLesbian:return "Gay & Lesbian"
                case .inspirational:return "Inspirational"
                case .holiday:return "Holiday"
                case .wholesome:return "Wholesome"
                case .military:return "Military"
                case .multicultural:return "Multicultural"
            }
        }
    }
    
    public enum TravelAndAdventure: Int, CaseIterable {
        case travelAndAdventure = 9004
        case africa = 10139
        case asia = 10140
        case specialtyTravel = 10141
        case canada = 10142
        case caribbean = 10143
        case latinAmerica = 10144
        case essaysAndMemoirs = 10145
        case europe = 10146
        case middleEast = 10147
        case unitedStates = 10148
        
        public var stringValue: String {
            switch self {
                case .travelAndAdventure:return "Travel & Adventure"
                case .africa:return "Africa"
                case .asia:return "Asia"
                case .specialtyTravel:return "Specialty Travel"
                case .canada:return "Canada"
                case .caribbean:return "Caribbean"
                case .latinAmerica:return "Latin America"
                case .essaysAndMemoirs:return "Essays & Memoirs"
                case .europe:return "Europe"
                case .middleEast:return "Middle East"
                case .unitedStates:return "United States"
            }
        }
    }
    
    public enum ArtsAndEntertainment: CaseIterable {
        case artsAndEntertainment
        case theater
        case games
        case music
        case performingArts
        case photography
        case dance
        case fashion
        case film
        case interiorDesign
        case mediaArts
        case radio
        case tv
        case visualArts
        case artHistory
        case design
        case artAndArchitecture(ArtAndArchitecture)
        
        public static var allCases: [ArtsAndEntertainment] {
            var array: [ArtsAndEntertainment] = [.artsAndEntertainment, .theater, .games, .music, .performingArts, .photography, .dance, .fashion, .film, .interiorDesign, .mediaArts, .radio, .tv, .visualArts, .artHistory, .design]
            array.append(contentsOf: ArtAndArchitecture.allCases.map({ArtsAndEntertainment.artAndArchitecture($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .artsAndEntertainment: return 9007
                case .theater: return 10036
                case .games: return 10067
                case .music: return 10087
                case .performingArts: return 10089
                case .photography: return 10092
                case .dance: return 11019
                case .fashion: return 11020
                case .film: return 11021
                case .interiorDesign: return 11022
                case .mediaArts: return 11023
                case .radio: return 11024
                case .tv: return 11025
                case .visualArts: return 11026
                case .artHistory: return 11234
                case .design: return 11236
                case .artAndArchitecture(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .artsAndEntertainment:return "Arts & Entertainment"
                case .theater:return "Theater"
                case .games:return "Games"
                case .music:return "Music"
                case .performingArts:return "Performing Arts"
                case .photography:return "Photography"
                case .dance:return "Dance"
                case .fashion:return "Fashion"
                case .film:return "Film"
                case .interiorDesign:return "Interior Design"
                case .mediaArts:return "Media Arts"
                case .radio:return "Radio"
                case .tv:return "TV"
                case .visualArts:return "Visual Arts"
                case .artHistory:return "Art History"
                case .design:return "Design"
                case .artAndArchitecture(let genre):
                    switch genre {
                        case .artAndArchitecture: return genre.stringValue
                        default: return "\(ArtAndArchitecture.artAndArchitecture.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum ArtAndArchitecture: Int, CaseIterable {
            case artAndArchitecture = 10002
            case urbanPlanning = 11018
            
            public var stringValue: String {
                switch self {
                    case .artAndArchitecture:return "Art & Architecture"
                    case .urbanPlanning:return "Urban Planning"
                }
            }
        }
    }
    
    public enum BiographiesAndMemoirs: Int, CaseIterable {
        case biographiesAndMemoirs = 9008
        case artsAndEntertainment = 11027
        case business = 11028
        case culinary = 11029
        case gayAndLesbian = 11030
        case historical = 11031
        case literary = 11032
        case mediaAndJournalism = 11033
        case military = 11034
        case politics = 11035
        case religious = 11036
        case scienceAndTechnology = 11037
        case sports = 11038
        case women = 11039
        
        public var stringValue: String {
            switch self {
                case .biographiesAndMemoirs:return "Biographies & Memoirs"
                case .artsAndEntertainment:return "Arts & Entertainment"
                case .business:return "Business"
                case .culinary:return "Culinary"
                case .gayAndLesbian:return "Gay & Lesbian"
                case .historical:return "Historical"
                case .literary:return "Literary"
                case .mediaAndJournalism:return "Media & Journalism"
                case .military:return "Military"
                case .politics:return "Politics"
                case .religious:return "Religious"
                case .scienceAndTechnology:return "Science & Technology"
                case .sports:return "Sports"
                case .women:return "Women"
            }
        }
    }
    
    public enum BusinessAndPersonalFinance: Int, CaseIterable {
        case businessAndPersonalFinance = 9009
        case industriesAndProfessions = 10005
        case marketingAndSales = 10006
        case smallBusinessAndEntrepreneurship = 10007
        case personalFinance = 10008
        case reference = 10009
        case careers = 10010
        case economics = 10011
        case investing = 10012
        case finance = 10013
        case managementAndLeadership = 10014
        case accounting = 11243
        case hospitality = 11244
        case realEstate = 11245
        
        public var stringValue: String {
            switch self {
                case .businessAndPersonalFinance:return "Business & Personal Finance"
                case .industriesAndProfessions:return "Industries & Professions"
                case .marketingAndSales:return "Marketing & Sales"
                case .smallBusinessAndEntrepreneurship:return "Small Business & Entrepreneurship"
                case .personalFinance:return "Personal Finance"
                case .reference:return "Reference"
                case .careers:return "Careers"
                case .economics:return "Economics"
                case .investing:return "Investing"
                case .finance:return "Finance"
                case .managementAndLeadership:return "Management & Leadership"
                case .accounting:return "Accounting"
                case .hospitality:return "Hospitality"
                case .realEstate:return "Real Estate"
            }
        }
    }
    
    public enum ChildrenAndTeens: Int, CaseIterable {
        case childrenAndTeens = 9010
        case childrensFiction = 10081
        case childrensNonfiction = 10082
        
        public var stringValue: String {
            switch self {
                case .childrenAndTeens:return "Children & Teens"
                case .childrensFiction:return "Children's Fiction"
                case .childrensNonfiction:return "Children's Nonfiction"
            }
        }
    }
    
    public enum Humor: Int, CaseIterable {
        case humor = 9012
        case jokesAndRiddles = 11246
        
        public var stringValue: String {
            switch self {
                case .humor:return "Humor"
                case .jokesAndRiddles:return "Jokes & Riddles"
            }
        }
    }
    
    public enum History: Int, CaseIterable {
        case history = 9015
        case africa = 10070
        case americas = 10071
        case ancient = 10072
        case asia = 10073
        case australiaAndOceania = 10074
        case europe = 10075
        case latinAmerica = 10076
        case middleEast = 10077
        case military = 10078
        case unitedStates = 10079
        case world = 10080
        
        public var stringValue: String {
            switch self {
                case .history:return "History"
                case .africa:return "Africa"
                case .americas:return "Americas"
                case .ancient:return "Ancient"
                case .asia:return "Asia"
                case .australiaAndOceania:return "Australia & Oceania"
                case .europe:return "Europe"
                case .latinAmerica:return "Latin America"
                case .middleEast:return "Middle East"
                case .military:return "Military"
                case .unitedStates:return "United States"
                case .world:return "World"
            }
        }
    }
    
    public enum ReligionAndSpirituality: Int, CaseIterable {
        case religionAndSpirituality = 9018
        case bibles = 10003
        case bibleStudies = 10105
        case buddhism = 10106
        case christianity = 10107
        case hinduism = 10108
        case islam = 10109
        case judaism = 10110
        case comparativeReligion = 11247
        
        public var stringValue: String {
            switch self {
                case .religionAndSpirituality:return "Religion & Spirituality"
                case .bibles:return "Bibles"
                case .bibleStudies:return "Bible Studies"
                case .buddhism:return "Buddhism"
                case .christianity:return "Christianity"
                case .hinduism:return "Hinduism"
                case .islam:return "Islam"
                case .judaism:return "Judaism"
                case .comparativeReligion:return "Comparative Religion"
            }
        }
    }
    
    public enum ScienceAndNature: CaseIterable {
        case scienceAndNature
        case nature
        case astronomy
        case chemistry
        case earthSciences
        case essays
        case history
        case lifeSciences
        case physics
        case reference
        case agriculture
        case atmosphere
        case biology
        case ecology
        case environment
        case geography
        case geology
        case mathematics(Mathematics)
        
        public static var allCases: [ScienceAndNature] {
            var array: [ScienceAndNature] = [.scienceAndNature, .nature, .astronomy, .chemistry, .earthSciences, .essays, .history, .lifeSciences, .physics, .reference, .agriculture, .atmosphere, .biology, .ecology, .environment, .geography, .geology]
            array.append(contentsOf: Mathematics.allCases.map({ScienceAndNature.mathematics($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .scienceAndNature: return 9019
                case .nature: return 10088
                case .astronomy: return 10111
                case .chemistry: return 10112
                case .earthSciences: return 10113
                case .essays: return 10114
                case .history: return 10115
                case .lifeSciences: return 10116
                case .physics: return 10117
                case .reference: return 10118
                case .agriculture: return 11063
                case .atmosphere: return 11064
                case .biology: return 11065
                case .ecology: return 11066
                case .environment: return 11067
                case .geography: return 11068
                case .geology: return 11069
                case .mathematics(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .scienceAndNature:return "Science & Nature"
                case .nature:return "Nature"
                case .astronomy:return "Astronomy"
                case .chemistry:return "Chemistry"
                case .earthSciences:return "Earth Sciences"
                case .essays:return "Essays"
                case .history:return "History"
                case .lifeSciences:return "Life Sciences"
                case .physics:return "Physics"
                case .reference:return "Reference"
                case .agriculture:return "Agriculture"
                case .atmosphere:return "Atmosphere"
                case .biology:return "Biology"
                case .ecology:return "Ecology"
                case .environment:return "Environment"
                case .geography:return "Geography"
                case .geology:return "Geology"
                case .mathematics(let genre):
                    switch genre {
                        case .mathematics: return genre.stringValue
                        default: return "\(Mathematics.mathematics.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum Mathematics: Int, CaseIterable {
            case mathematics = 10085
            case advancedMathematics = 11295
            case algebra = 11296
            case arithmetic = 11297
            case calculus = 11298
            case geometry = 11299
            case statistics = 11300
            
            public var stringValue: String {
                switch self {
                    case .mathematics:return "Mathematics"
                    case .advancedMathematics:return "Advanced Mathematics"
                    case .algebra:return "Algebra"
                    case .arithmetic:return "Arithmetic"
                    case .calculus:return "Calculus"
                    case .geometry:return "Geometry"
                    case .statistics:return "Statistics"
                }
            }
        }
    }
    
    public enum SciFiAndFantasy: CaseIterable {
        case sciFiAndFantasy
        case scienceFiction
        case fantasy(Fantasy)
        case scienceFictionAndLiterature(ScienceFictionAndLiterature)
        
        public static var allCases: [SciFiAndFantasy] {
            var array: [SciFiAndFantasy] = [.sciFiAndFantasy, .scienceFiction]
            array.append(contentsOf: Fantasy.allCases.map({SciFiAndFantasy.fantasy($0)}))
            array.append(contentsOf: ScienceFictionAndLiterature.allCases.map({SciFiAndFantasy.scienceFictionAndLiterature($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .sciFiAndFantasy: return 9020
                case .scienceFiction: return 10063
                case .fantasy(let genre): return genre.rawValue
                case .scienceFictionAndLiterature(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .sciFiAndFantasy:return "Sci-Fi & Fantasy"
                case .scienceFiction:return "Science Fiction"
                case .fantasy(let genre):
                    switch genre {
                        case .fantasy: return genre.stringValue
                        default: return "\(Fantasy.fantasy.stringValue)|\(genre.stringValue)"
                    }
                case .scienceFictionAndLiterature(let genre):
                    switch genre {
                        case .scienceFictionAndLiterature: return genre.stringValue
                        default: return "\(ScienceFictionAndLiterature.scienceFictionAndLiterature.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum Fantasy: Int, CaseIterable {
            case fantasy = 10044
            case contemporary = 11001
            case epic = 11002
            case historical = 11003
            case paranormal = 11004
            case shortStories = 11005
            case urban = 11275
            
            public var stringValue: String {
                switch self {
                    case .fantasy:return "Fantasy"
                    case .contemporary:return "Contemporary"
                    case .epic:return "Epic"
                    case .historical:return "Historical"
                    case .paranormal:return "Paranormal"
                    case .shortStories:return "Short Stories"
                    case .urban:return "Urban"
                }
            }
        }
        
        public enum ScienceFictionAndLiterature: Int, CaseIterable {
            case scienceFictionAndLiterature = 10064
            case adventure = 11006
            case highTech = 11007
            case shortStories = 11008
            
            public var stringValue: String {
                switch self {
                    case .scienceFictionAndLiterature:return "Science Fiction & Literature"
                    case .adventure:return "Adventure"
                    case .highTech:return "High Tech"
                    case .shortStories:return "Short Stories"
                }
            }
        }
    }
    
    public enum LifestyleAndHome: Int, CaseIterable {
        case lifestyleAndHome = 9024
        case antiquesAndCollectibles = 10001
        case craftsAndHobbies = 10034
        case gardening = 10068
        case pets = 10090
        
        public var stringValue: String {
            switch self {
                case .lifestyleAndHome:return "Lifestyle & Home"
                case .antiquesAndCollectibles:return "Antiques & Collectibles"
                case .craftsAndHobbies:return "Crafts & Hobbies"
                case .gardening:return "Gardening"
                case .pets:return "Pets"
            }
        }
    }
    
    public enum SelfDevelopment: Int, CaseIterable {
        case selfDevelopment = 9025
        case spirituality = 10004
        case healthAndFitness = 10069
        case psychology = 10094
        case selfImprovement = 10119
        case dietAndNutrition = 11062
        
        public var stringValue: String {
            switch self {
                case .selfDevelopment:return "Self-Development"
                case .spirituality:return "Spirituality"
                case .healthAndFitness:return "Health & Fitness"
                case .psychology:return "Psychology"
                case .selfImprovement:return "Self-Improvement"
                case .dietAndNutrition:return "Diet & Nutrition"
            }
        }
    }
    
    public enum ComicsAndGraphicNovels: CaseIterable {
        case comicsAndGraphicNovels
        case graphicNovels
        case comics
        case manga(Manga)
        
        public static var allCases: [ComicsAndGraphicNovels] {
            var array: [ComicsAndGraphicNovels] = [.comicsAndGraphicNovels, .graphicNovels, .comics]
            array.append(contentsOf: Manga.allCases.map({ComicsAndGraphicNovels.manga($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .comicsAndGraphicNovels: return 9026
                case .graphicNovels: return 10015
                case .comics: return 50000090
                case .manga(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .comicsAndGraphicNovels:return "Comics & Graphic Novels"
                case .graphicNovels:return "Graphic Novels"
                case .comics:return "Comics"
                case .manga(let genre):
                    switch genre {
                        case .manga: return genre.stringValue
                        default: return "\(Manga.manga.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum Manga: Int, CaseIterable {
            case manga = 10016
            case schoolDrama = 11051
            case humanDrama = 11052
            case familyDrama = 11053
            case boys = 11337
            case men = 11338
            case girls = 11339
            case women = 11340
            case other = 11341
            case yaoi = 11342
            case comicEssays = 11343
            case action = 50000071
            case comedy = 50000072
            case erotica = 50000073
            case fantasy = 50000074
            case fourCellManga = 50000075
            case gayAndLesbian = 50000076
            case hardBoiled = 50000077
            case heroes = 50000078
            case historicalFiction = 50000079
            case mecha = 50000080
            case mystery = 50000081
            case nonfiction = 50000082
            case religious = 50000083
            case romance = 50000084
            case romanticComedy = 50000085
            case scienceFiction = 50000086
            case sports = 50000087
            case horror = 50000089
            
            public var stringValue: String {
                switch self {
                    case .manga:return "Manga"
                    case .schoolDrama:return "School Drama"
                    case .humanDrama:return "Human Drama"
                    case .familyDrama:return "Family Drama"
                    case .boys:return "Boys"
                    case .men:return "Men"
                    case .girls:return "Girls"
                    case .women:return "Women"
                    case .other:return "Other"
                    case .yaoi:return "Yaoi"
                    case .comicEssays:return "Comic Essays"
                    case .action:return "Action"
                    case .comedy:return "Comedy"
                    case .erotica:return "Erotica"
                    case .fantasy:return "Fantasy"
                    case .fourCellManga:return "Four Cell Manga"
                    case .gayAndLesbian:return "Gay & Lesbian"
                    case .hardBoiled:return "Hard-Boiled"
                    case .heroes:return "Heroes"
                    case .historicalFiction:return "Historical Fiction"
                    case .mecha:return "Mecha"
                    case .mystery:return "Mystery"
                    case .nonfiction:return "Nonfiction"
                    case .religious:return "Religious"
                    case .romance:return "Romance"
                    case .romanticComedy:return "Romantic Comedy"
                    case .scienceFiction:return "Science Fiction"
                    case .sports:return "Sports"
                    case .horror:return "Horror"
                }
            }
        }
    }
    
    public enum ComputersAndInternet: Int, CaseIterable {
        case computersAndInternet = 9027
        case computers = 10017
        case databases = 10018
        case digitalMedia = 10019
        case internet = 10020
        case network = 10021
        case operatingSystems = 10022
        case programming = 10023
        case software = 10024
        case systemAdministration = 10025
        
        public var stringValue: String {
            switch self {
                case .computersAndInternet:return "Computers & Internet"
                case .computers:return "Computers"
                case .databases:return "Databases"
                case .digitalMedia:return "Digital Media"
                case .internet:return "Internet"
                case .network:return "Network"
                case .operatingSystems:return "Operating Systems"
                case .programming:return "Programming"
                case .software:return "Software"
                case .systemAdministration:return "System Administration"
            }
        }
    }
    
    public enum CookbooksFoodAndWine: Int, CaseIterable {
        case cookbooksFoodAndWine = 9028
        case beverages = 10026
        case coursesAndDishes = 10027
        case specialDiet = 10028
        case specialOccasions = 10029
        case methods = 10030
        case reference = 10031
        case regionalAndEthnic = 10032
        case specificIngredients = 10033
        case culinaryArts = 11255
        
        public var stringValue: String {
            switch self {
                case .cookbooksFoodAndWine:return "Cookbooks, Food & Wine"
                case .beverages:return "Beverages"
                case .coursesAndDishes:return "Courses & Dishes"
                case .specialDiet:return "Special Diet"
                case .specialOccasions:return "Special Occasions"
                case .methods:return "Methods"
                case .reference:return "Reference"
                case .regionalAndEthnic:return "Regional & Ethnic"
                case .specificIngredients:return "Specific Ingredients"
                case .culinaryArts:return "Culinary Arts"
            }
        }
    }
    
    public enum ProfessionalAndTechnical: CaseIterable {
        case professionalAndTechnical
        case design
        case law
        case education(Education)
        case medical(Medical)
        case engineering(Engineering)
        
        public static var allCases: [ProfessionalAndTechnical] {
            var array: [ProfessionalAndTechnical] = [.professionalAndTechnical, .design, .law]
            array.append(contentsOf: Education.allCases.map({ProfessionalAndTechnical.education($0)}))
            array.append(contentsOf: Medical.allCases.map({ProfessionalAndTechnical.medical($0)}))
            array.append(contentsOf: Engineering.allCases.map({ProfessionalAndTechnical.engineering($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .professionalAndTechnical: return 9029
                case .design: return 10035
                case .law: return 10083
                case .education(let genre): return genre.rawValue
                case .medical(let genre): return genre.rawValue
                case .engineering(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .professionalAndTechnical:return "Professional & Technical"
                case .design:return "Design"
                case .law:return "Law"
                case .education(let genre):
                    switch genre {
                        case .education: return genre.stringValue
                        default: return "\(Education.education.stringValue)|\(genre.stringValue)"
                    }
                case .medical(let genre):
                    switch genre {
                        case .medical: return genre.stringValue
                        default: return "\(Medical.medical.stringValue)|\(genre.stringValue)"
                    }
                case .engineering(let genre):
                    switch genre {
                        case .engineering: return genre.stringValue
                        default: return "\(Engineering.engineering.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum Education: Int, CaseIterable {
            case education = 10037
            case languageArtsAndDisciplines = 11009
            
            public var stringValue: String {
                switch self {
                    case .education:return "Education"
                    case .languageArtsAndDisciplines:return "Language Arts & Disciplines"
                }
            }
        }
        
        public enum Medical: Int, CaseIterable {
            case medical = 10086
            case veterinary = 11301
            case neuroscience = 11302
            case immunology = 11303
            case nursing = 11304
            case pharmacologyAndToxicology = 11305
            case anatomyAndPhysiology = 11306
            case dentistry = 11307
            case emergencyMedicine = 11308
            case genetics = 11309
            case psychiatry = 11310
            case radiology = 11311
            case alternativeMedicine = 11312
            
            public var stringValue: String {
                switch self {
                    case .medical:return "Medical"
                    case .veterinary:return "Veterinary"
                    case .neuroscience:return "Neuroscience"
                    case .immunology:return "Immunology"
                    case .nursing:return "Nursing"
                    case .pharmacologyAndToxicology:return "Pharmacology & Toxicology"
                    case .anatomyAndPhysiology:return "Anatomy & Physiology"
                    case .dentistry:return "Dentistry"
                    case .emergencyMedicine:return "Emergency Medicine"
                    case .genetics:return "Genetics"
                    case .psychiatry:return "Psychiatry"
                    case .radiology:return "Radiology"
                    case .alternativeMedicine:return "Alternative Medicine"
                }
            }
        }
        
        public enum Engineering: Int, CaseIterable {
            case engineering = 10137
            case aeronautics = 11329
            case chemicalAndPetroleumEngineering = 11330
            case civilEngineering = 11331
            case computerScience = 11332
            case electricalEngineering = 11333
            case environmentalEngineering = 11334
            case mechanicalEngineering = 11335
            case powerResources = 11336
            
            public var stringValue: String {
                switch self {
                    case .engineering:return "Engineering"
                    case .aeronautics:return "Aeronautics"
                    case .chemicalAndPetroleumEngineering:return "Chemical & Petroleum Engineering"
                    case .civilEngineering:return "Civil Engineering"
                    case .computerScience:return "Computer Science"
                    case .electricalEngineering:return "Electrical Engineering"
                    case .environmentalEngineering:return "Environmental Engineering"
                    case .mechanicalEngineering:return "Mechanical Engineering"
                    case .powerResources:return "Power Resources"
                }
            }
        }
    }
    
    public enum FictionAndLiterature: Int, CaseIterable {
        case fictionAndLiterature = 9031
        case actionAndAdventure = 10039
        case africanAmerican = 10040
        case religious = 10041
        case classics = 10042
        case erotica = 10043
        case gay = 10045
        case ghost = 10046
        case historical = 10047
        case horror = 10048
        case literary = 10049
        case shortStories = 10065
        case literaryCriticism = 10084
        case poetry = 10093
        case essays = 11044
        case anthologies = 11045
        case comparativeLiterature = 11046
        case drama = 11047
        case fairyTalesMythsAndFables = 11049
        case family = 11050
        case lightNovels = 50000088
        
        public var stringValue: String {
            switch self {
                case .fictionAndLiterature:return "Fiction & Literature"
                case .actionAndAdventure:return "Action & Adventure"
                case .africanAmerican:return "African American"
                case .religious:return "Religious"
                case .classics:return "Classics"
                case .erotica:return "Erotica"
                case .gay:return "Gay"
                case .ghost:return "Ghost"
                case .historical:return "Historical"
                case .horror:return "Horror"
                case .literary:return "Literary"
                case .shortStories:return "Short Stories"
                case .literaryCriticism:return "Literary Criticism"
                case .poetry:return "Poetry"
                case .essays:return "Essays"
                case .anthologies:return "Anthologies"
                case .comparativeLiterature:return "Comparative Literature"
                case .drama:return "Drama"
                case .fairyTalesMythsAndFables:return "Fairy Tales, Myths & Fables"
                case .family:return "Family"
                case .lightNovels:return "Light Novels"
            }
        }
    }
    
    public enum MysteriesAndThrillers: Int, CaseIterable {
        case mysteriesAndThrillers = 9032
        case hardBoiled = 10050
        case historical = 10051
        case policeProcedural = 10052
        case shortStories = 10053
        case britishDetectives = 10054
        case womenSleuths = 10055
        case cozy = 11259
        
        public var stringValue: String {
            switch self {
                case .mysteriesAndThrillers:return "Mysteries & Thrillers"
                case .hardBoiled:return "Hard-Boiled"
                case .historical:return "Historical"
                case .policeProcedural:return "Police Procedural"
                case .shortStories:return "Short Stories"
                case .britishDetectives:return "British Detectives"
                case .womenSleuths:return "Women Sleuths"
                case .cozy:return "Cozy"
            }
        }
    }
    
    public enum Reference: CaseIterable {
        case reference
        case almanacsAndYearbooks
        case atlasesAndMaps
        case catalogsAndDirectories
        case consumerGuides
        case dictionariesAndThesauruses
        case encyclopedias
        case etiquette
        case quotations
        case wordsAndLanguage
        case writing
        case studyAids
        case manuals
        case foreignLanguages(ForeignLanguages)
        
        public static var allCases: [Reference] {
            var array: [Reference] = [.reference, .almanacsAndYearbooks, .atlasesAndMaps, .catalogsAndDirectories, .consumerGuides, .dictionariesAndThesauruses, .encyclopedias, .etiquette, .quotations, .wordsAndLanguage, .writing, .studyAids, .manuals]
            array.append(contentsOf: ForeignLanguages.allCases.map({Reference.foreignLanguages($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .reference: return 9033
                case .almanacsAndYearbooks: return 10095
                case .atlasesAndMaps: return 10096
                case .catalogsAndDirectories: return 10097
                case .consumerGuides: return 10098
                case .dictionariesAndThesauruses: return 10099
                case .encyclopedias: return 10100
                case .etiquette: return 10101
                case .quotations: return 10102
                case .wordsAndLanguage: return 10103
                case .writing: return 10104
                case .studyAids: return 10136
                case .manuals: return 11085
                case .foreignLanguages(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .reference:return "Reference"
                case .almanacsAndYearbooks:return "Almanacs & Yearbooks"
                case .atlasesAndMaps:return "Atlases & Maps"
                case .catalogsAndDirectories:return "Catalogs & Directories"
                case .consumerGuides:return "Consumer Guides"
                case .dictionariesAndThesauruses:return "Dictionaries & Thesauruses"
                case .encyclopedias:return "Encyclopedias"
                case .etiquette:return "Etiquette"
                case .quotations:return "Quotations"
                case .wordsAndLanguage:return "Words & Language"
                case .writing:return "Writing"
                case .studyAids:return "Study Aids"
                case .manuals:return "Manuals"
                case .foreignLanguages(let genre):
                    switch genre {
                        case .foreignLanguages: return genre.stringValue
                        default: return "\(ForeignLanguages.foreignLanguages.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum ForeignLanguages: Int, CaseIterable {
            case foreignLanguages = 10066
            case arabic = 11276
            case bilingualEditions = 11277
            case africanLanguages = 11278
            case ancientLanguages = 11279
            case chinese = 11280
            case english = 11281
            case french = 11282
            case german = 11283
            case hebrew = 11284
            case hindi = 11285
            case italian = 11286
            case japanese = 11287
            case korean = 11288
            case linguistics = 11289
            case otherLanguages = 11290
            case portuguese = 11291
            case russian = 11292
            case spanish = 11293
            case speechPathology = 11294
            
            public var stringValue: String {
                switch self {
                    case .foreignLanguages:return "Foreign Languages"
                    case .arabic:return "Arabic"
                    case .bilingualEditions:return "Bilingual Editions"
                    case .africanLanguages:return "African Languages"
                    case .ancientLanguages:return "Ancient Languages"
                    case .chinese:return "Chinese"
                    case .english:return "English"
                    case .french:return "French"
                    case .german:return "German"
                    case .hebrew:return "Hebrew"
                    case .hindi:return "Hindi"
                    case .italian:return "Italian"
                    case .japanese:return "Japanese"
                    case .korean:return "Korean"
                    case .linguistics:return "Linguistics"
                    case .otherLanguages:return "Other Languages"
                    case .portuguese:return "Portuguese"
                    case .russian:return "Russian"
                    case .spanish:return "Spanish"
                    case .speechPathology:return "Speech Pathology"
                }
            }
        }
    }
    
    public enum PoliticsAndCurrentEvents: Int, CaseIterable {
        case politicsAndCurrentEvents = 9034
        case currentEvents = 11260
        case foreignPolicyAndInternationalRelations = 11261
        case localGovernment = 11262
        case nationalGovernment = 11263
        case politicalScience = 11264
        case publicAdministration = 11265
        case worldAffairs = 11266
        
        public var stringValue: String {
            switch self {
                case .politicsAndCurrentEvents:return "Politics & Current Events"
                case .currentEvents:return "Current Events"
                case .foreignPolicyAndInternationalRelations:return "Foreign Policy & International Relations"
                case .localGovernment:return "Local Government"
                case .nationalGovernment:return "National Government"
                case .politicalScience:return "Political Science"
                case .publicAdministration:return "Public Administration"
                case .worldAffairs:return "World Affairs"
            }
        }
    }
    
    public enum SportsAndOutdoors: Int, CaseIterable {
        case sportsAndOutdoors = 9035
        case baseball = 10121
        case basketball = 10122
        case coaching = 10123
        case extremeSports = 10124
        case football = 10125
        case golf = 10126
        case hockey = 10127
        case mountaineering = 10128
        case outdoors = 10129
        case racketSports = 10130
        case reference = 10131
        case soccer = 10132
        case training = 10133
        case waterSports = 10134
        case winterSports = 10135
        case boxing = 11054
        case cricket = 11055
        case cycling = 11056
        case equestrian = 11057
        case martialArtsAndSelfDefense = 11058
        case motorSports = 11059
        case rugby = 11060
        case running = 11061
        
        public var stringValue: String {
            switch self {
                case .sportsAndOutdoors:return "Sports & Outdoors"
                case .baseball:return "Baseball"
                case .basketball:return "Basketball"
                case .coaching:return "Coaching"
                case .extremeSports:return "Extreme Sports"
                case .football:return "Football"
                case .golf:return "Golf"
                case .hockey:return "Hockey"
                case .mountaineering:return "Mountaineering"
                case .outdoors:return "Outdoors"
                case .racketSports:return "Racket Sports"
                case .reference:return "Reference"
                case .soccer:return "Soccer"
                case .training:return "Training"
                case .waterSports:return "Water Sports"
                case .winterSports:return "Winter Sports"
                case .boxing:return "Boxing"
                case .cricket:return "Cricket"
                case .cycling:return "Cycling"
                case .equestrian:return "Equestrian"
                case .martialArtsAndSelfDefense:return "Martial Arts & Self Defense"
                case .motorSports:return "Motor Sports"
                case .rugby:return "Rugby"
                case .running:return "Running"
            }
        }
    }
    
    public enum CommunicationsAndMedia: Int, CaseIterable {
        case communicationsAndMedia = 11010
        case broadcasting = 11011
        case digitalMedia = 11012
        case journalism = 11013
        case photojournalism = 11014
        case print = 11015
        case speech = 11016
        case writing = 11017
        
        public var stringValue: String {
            switch self {
                case .communicationsAndMedia:return "Communications & Media"
                case .broadcasting:return "Broadcasting"
                case .digitalMedia:return "Digital Media"
                case .journalism:return "Journalism"
                case .photojournalism:return "Photojournalism"
                case .print:return "Print"
                case .speech:return "Speech"
                case .writing:return "Writing"
            }
        }
    }
    
    public enum Kids: CaseIterable {
        case kids
        case animals
        case biography
        case careersAndOccupations
        case computersAndTechnology
        case cookingAndFood
        case family
        case gamesAndActivities
        case generalNonfiction
        case health
        case history
        case poetry
        case nurseryRhymes
        case government
        case reference
        case religion
        case scienceAndNature
        case socialIssues
        case socialStudies
        case sportsAndRecreation
        case transportation
        case artsAndEntertainment(ArtsAndEntertainment)
        case basicConcepts(BasicConcepts)
        case fiction(Fiction)
        case holidaysAndCelebrations(HolidaysAndCelebrations)
        case humor(Humor)
        case learningToRead(LearningToRead)
        
        public static var allCases: [Kids] {
            var array: [Kids] = [
                .kids, .animals, .biography, .careersAndOccupations, .computersAndTechnology, .cookingAndFood, .family, .gamesAndActivities, .generalNonfiction, .health, .history, .poetry, .nurseryRhymes, .government, .reference, .religion, .socialStudies, .socialIssues, .scienceAndNature, .sportsAndRecreation, .transportation]
            array.append(contentsOf: ArtsAndEntertainment.allCases.map({Kids.artsAndEntertainment($0)}))
            array.append(contentsOf: Fiction.allCases.map({Kids.fiction($0)}))
            array.append(contentsOf: HolidaysAndCelebrations.allCases.map({Kids.holidaysAndCelebrations($0)}))
            array.append(contentsOf: Humor.allCases.map({Kids.humor($0)}))
            array.append(contentsOf: BasicConcepts.allCases.map({Kids.basicConcepts($0)}))
            array.append(contentsOf: LearningToRead.allCases.map({Kids.learningToRead($0)}))
            return array
        }
        public var identifier: Int {
            switch self {
                case .kids: return 11086
                case .animals: return 11087
                case .biography: return 11102
                case .careersAndOccupations: return 11103
                case .computersAndTechnology: return 11104
                case .cookingAndFood: return 11105
                case .family: return 11111
                case .gamesAndActivities: return 11132
                case .generalNonfiction: return 11133
                case .health: return 11134
                case .history: return 11135
                case .poetry: return 11151
                case .nurseryRhymes: return 11156
                case .government: return 11157
                case .reference: return 11158
                case .religion: return 11159
                case .scienceAndNature: return 11160
                case .socialIssues: return 11161
                case .socialStudies: return 11162
                case .sportsAndRecreation: return 11163
                case .transportation: return 11164
                case .artsAndEntertainment(let genre): return genre.rawValue
                case .basicConcepts(let genre): return genre.rawValue
                case .fiction(let genre): return genre.rawValue
                case .holidaysAndCelebrations(let genre): return genre.rawValue
                case .humor(let genre): return genre.rawValue
                case .learningToRead(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .kids:return "Kids"
                case .animals:return "Animals"
                case .biography:return "Biography"
                case .careersAndOccupations:return "Careers & Occupations"
                case .computersAndTechnology:return "Computers & Technology"
                case .cookingAndFood:return "Cooking & Food"
                case .family:return "Family"
                case .gamesAndActivities:return "Games & Activities"
                case .generalNonfiction:return "General Nonfiction"
                case .health:return "Health"
                case .history:return "History"
                case .poetry:return "Poetry"
                case .nurseryRhymes:return "Nursery Rhymes"
                case .government:return "Government"
                case .reference:return "Reference"
                case .religion:return "Religion"
                case .scienceAndNature:return "Science & Nature"
                case .socialIssues:return "Social Issues"
                case .socialStudies:return "Social Studies"
                case .sportsAndRecreation:return "Sports & Recreation"
                case .transportation:return "Transportation"
                case .artsAndEntertainment(let genre):
                    switch genre {
                        case .artsAndEntertainment: return genre.stringValue
                        default: return "\(ArtsAndEntertainment.artsAndEntertainment.stringValue)|\(genre.stringValue)"
                    }
                case .basicConcepts(let genre):
                    switch genre {
                        case .basicConcepts: return genre.stringValue
                        default: return "\(BasicConcepts.basicConcepts.stringValue)|\(genre.stringValue)"
                    }
                case .fiction(let genre):
                    switch genre {
                        case .fiction: return genre.stringValue
                        default: return "\(Fiction.fiction.stringValue)|\(genre.stringValue)"
                    }
                case .holidaysAndCelebrations(let genre):
                    switch genre {
                        case .holidaysAndCelebrations: return genre.stringValue
                        default: return "\(HolidaysAndCelebrations.holidaysAndCelebrations.stringValue)|\(genre.stringValue)"
                    }
                case .humor(let genre):
                    switch genre {
                        case .humor: return genre.stringValue
                        default: return "\(Humor.humor.stringValue)|\(genre.stringValue)"
                    }
                case .learningToRead(let genre):
                    switch genre {
                        case .learningtoRead: return genre.stringValue
                        default: return "\(LearningToRead.learningtoRead.stringValue)|\(genre.stringValue)"
                    }
            }
        }

        public enum BasicConcepts: Int, CaseIterable {
            case basicConcepts = 11088
            case alphabet = 11089
            case body = 11090
            case colors = 11091
            case countingAndNumbers = 11092
            case dateAndTime = 11093
            case general = 11094
            case money = 11095
            case opposites = 11096
            case seasons = 11097
            case sensesAndSensation = 11098
            case sizeAndShape = 11099
            case sounds = 11100
            case words = 11101
            
            public var stringValue: String {
                switch self {
                    case .basicConcepts:return "Basic Concepts"
                    case .alphabet:return "Alphabet"
                    case .body:return "Body"
                    case .colors:return "Colors"
                    case .countingAndNumbers:return "Counting & Numbers"
                    case .dateAndTime:return "Date & Time"
                    case .general:return "General"
                    case .money:return "Money"
                    case .opposites:return "Opposites"
                    case .seasons:return "Seasons"
                    case .sensesAndSensation:return "Senses & Sensation"
                    case .sizeAndShape:return "Size & Shape"
                    case .sounds:return "Sounds"
                    case .words:return "Words"
                }
            }
        }
        
        public enum ArtsAndEntertainment: Int, CaseIterable {
            case artsAndEntertainment = 11106
            case art = 11107
            case crafts = 11108
            case music = 11109
            case performingArts = 11110
            
            public var stringValue: String {
                switch self {
                    case .artsAndEntertainment:return "Arts & Entertainment"
                    case .art:return "Art"
                    case .crafts:return "Crafts"
                    case .music:return "Music"
                    case .performingArts:return "Performing Arts"
                }
            }
        }
        
        public enum Fiction: Int, CaseIterable {
            case fiction = 11112
            case actionAndAdventure = 11113
            case animals = 11114
            case classics = 11115
            case comicsAndGraphicNovels = 11116
            case culturePlacesAndPeople = 11117
            case familyAndRelationships = 11118
            case fantasy = 11119
            case fairyTalesMythsAndFables = 11120
            case favoriteCharacters = 11121
            case historical = 11122
            case holidaysAndCelebrations = 11123
            case monstersAndGhosts = 11124
            case mysteries = 11125
            case nature = 11126
            case religion = 11127
            case sciFi = 11128
            case socialIssues = 11129
            case sportsAndRecreation = 11130
            case transportation = 11131
            
            public var stringValue: String {
                switch self {
                    case .fiction:return "Fiction"
                    case .actionAndAdventure:return "Action & Adventure"
                    case .animals:return "Animals"
                    case .classics:return "Classics"
                    case .comicsAndGraphicNovels:return "Comics & Graphic Novels"
                    case .culturePlacesAndPeople:return "Culture, Places & People"
                    case .familyAndRelationships:return "Family & Relationships"
                    case .fantasy:return "Fantasy"
                    case .fairyTalesMythsAndFables:return "Fairy Tales, Myths & Fables"
                    case .favoriteCharacters:return "Favorite Characters"
                    case .historical:return "Historical"
                    case .holidaysAndCelebrations:return "Holidays & Celebrations"
                    case .monstersAndGhosts:return "Monsters & Ghosts"
                    case .mysteries:return "Mysteries"
                    case .nature:return "Nature"
                    case .religion:return "Religion"
                    case .sciFi:return "Sci-Fi"
                    case .socialIssues:return "Social Issues"
                    case .sportsAndRecreation:return "Sports & Recreation"
                    case .transportation:return "Transportation"
                }
            }
        }
        
        public enum HolidaysAndCelebrations: Int, CaseIterable {
            case holidaysAndCelebrations = 11136
            case birthdays = 11137
            case christmasAndAdvent = 11138
            case easterAndLent = 11139
            case general = 11140
            case halloween = 11141
            case hanukkah = 11142
            case other = 11143
            case passover = 11144
            case patrioticHolidays = 11145
            case ramadan = 11146
            case thanksgiving = 11147
            case valentinesDay = 11148
            
            public var stringValue: String {
                switch self {
                    case .holidaysAndCelebrations:return "Holidays & Celebrations"
                    case .birthdays:return "Birthdays"
                    case .christmasAndAdvent:return "Christmas & Advent"
                    case .easterAndLent:return "Easter & Lent"
                    case .general:return "General"
                    case .halloween:return "Halloween"
                    case .hanukkah:return "Hanukkah"
                    case .other:return "Other"
                    case .passover:return "Passover"
                    case .patrioticHolidays:return "Patriotic Holidays"
                    case .ramadan:return "Ramadan"
                    case .thanksgiving:return "Thanksgiving"
                    case .valentinesDay:return "Valentine's Day"
                }
            }
        }
        
        public enum Humor: Int, CaseIterable {
            case humor = 11149
            case jokesAndRiddles = 11150
            
            public var stringValue: String {
                switch self {
                    case .humor:return "Humor"
                    case .jokesAndRiddles:return "Jokes & Riddles"
                }
            }
        }
        
        public enum LearningToRead: Int, CaseIterable {
            case learningtoRead = 11152
            case chapterBooks = 11153
            case earlyReaders = 11154
            case intermediateReaders = 11155
            
            public var stringValue: String {
                switch self {
                    case .learningtoRead:return "Learning to Read"
                    case .chapterBooks:return "Chapter Books"
                    case .earlyReaders:return "Early Readers"
                    case .intermediateReaders:return "Intermediate Readers"
                }
            }
        }
    }
    
    public enum YoungAdult: CaseIterable {
        case youngAdult
        case animals
        case biography
        case careersAndOccupations
        case computersAndTechnology
        case cookingAndFood
        case family
        case gamesAndActivities
        case generalNonfiction
        case health
        case history
        case poetry
        case politicsAndGovernment
        case reference
        case religion
        case scienceAndNature
        case comingOfAge
        case socialStudies
        case sportsAndRecreation
        case transportation
        case artsAndEntertainment(ArtsAndEntertainment)
        case fiction(Fiction)
        case holidaysAndCelebrations(HolidaysAndCelebrations)
        case humor(Humor)
        
        public static var allCases: [YoungAdult] {
            var array: [YoungAdult] = [
                .youngAdult, .animals, .biography, .careersAndOccupations, .computersAndTechnology, .cookingAndFood, .family, .gamesAndActivities, .generalNonfiction, .health, .history, .poetry, .politicsAndGovernment, .reference, .religion, .socialStudies, .scienceAndNature, .comingOfAge, .sportsAndRecreation, .transportation]
            array.append(contentsOf: ArtsAndEntertainment.allCases.map({YoungAdult.artsAndEntertainment($0)}))
            array.append(contentsOf: Fiction.allCases.map({YoungAdult.fiction($0)}))
            array.append(contentsOf: HolidaysAndCelebrations.allCases.map({YoungAdult.holidaysAndCelebrations($0)}))
            array.append(contentsOf: Humor.allCases.map({YoungAdult.humor($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .youngAdult: return 11165
                case .animals: return 11166
                case .biography: return 11167
                case .careersAndOccupations: return 11168
                case .computersAndTechnology: return 11169
                case .cookingAndFood: return 11170
                case .family: return 11176
                case .gamesAndActivities: return 11199
                case .generalNonfiction: return 11200
                case .health: return 11201
                case .history: return 11202
                case .poetry: return 11218
                case .politicsAndGovernment: return 11219
                case .reference: return 11220
                case .religion: return 11221
                case .scienceAndNature: return 11222
                case .comingOfAge: return 11223
                case .socialStudies: return 11224
                case .sportsAndRecreation: return 11225
                case .transportation: return 11226
                case .artsAndEntertainment(let genre): return genre.rawValue
                case .fiction(let genre): return genre.rawValue
                case .holidaysAndCelebrations(let genre): return genre.rawValue
                case .humor(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .youngAdult:return "Young Adult"
                case .animals:return "Animals"
                case .biography:return "Biography"
                case .careersAndOccupations:return "Careers & Occupations"
                case .computersAndTechnology:return "Computers & Technology"
                case .cookingAndFood:return "Cooking & Food"
                case .family:return "Family"
                case .gamesAndActivities:return "Games & Activities"
                case .generalNonfiction:return "General Nonfiction"
                case .health:return "Health"
                case .history:return "History"
                case .poetry:return "Poetry"
                case .politicsAndGovernment:return "Politics & Government"
                case .reference:return "Reference"
                case .religion:return "Religion"
                case .scienceAndNature:return "Science & Nature"
                case .comingOfAge:return "Coming of Age"
                case .socialStudies:return "Social Studies"
                case .sportsAndRecreation:return "Sports & Recreation"
                case .transportation:return "Transportation"
                case .artsAndEntertainment(let genre):
                    switch genre {
                        case .artsAndEntertainment: return genre.stringValue
                        default: return "\(ArtsAndEntertainment.artsAndEntertainment.stringValue)|\(genre.stringValue)"
                    }
                case .fiction(let genre):
                    switch genre {
                        case .fiction: return genre.stringValue
                        default: return "\(Fiction.fiction.stringValue)|\(genre.stringValue)"
                    }
                case .holidaysAndCelebrations(let genre):
                    switch genre {
                        case .holidaysAndCelebrations: return genre.stringValue
                        default: return "\(HolidaysAndCelebrations.holidaysAndCelebrations.stringValue)|\(genre.stringValue)"
                    }
                case .humor(let genre):
                    switch genre {
                        case .humor: return genre.stringValue
                        default: return "\(Humor.humor.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum ArtsAndEntertainment: Int, CaseIterable {
            case artsAndEntertainment = 11171
            case art = 11172
            case crafts = 11173
            case music = 11174
            case performingArts = 11175
            
            public var stringValue: String {
                switch self {
                    case .artsAndEntertainment:return "Arts & Entertainment"
                    case .art:return "Art"
                    case .crafts:return "Crafts"
                    case .music:return "Music"
                    case .performingArts:return "Performing Arts"
                }
            }
        }
        
        public enum Fiction: Int, CaseIterable {
            case fiction = 11177
            case actionAndAdventure = 11178
            case animals = 11179
            case classics = 11180
            case comicsAndGraphicNovels = 11181
            case culturePlacesAndPeople = 11182
            case dystopian = 11183
            case familyAndRelationships = 11184
            case fantasy = 11185
            case fairyTalesMythsAndFables = 11186
            case favoriteCharacters = 11187
            case historical = 11188
            case holidaysAndCelebrations = 11189
            case horrorMonstersAndGhosts = 11190
            case crimeAndMystery = 11191
            case nature = 11192
            case religion = 11193
            case romance = 11194
            case sciFi = 11195
            case comingOfAge = 11196
            case sportsAndRecreation = 11197
            case transportation = 11198
            
            public var stringValue: String {
                switch self {
                    case .fiction:return "Fiction"
                    case .actionAndAdventure:return "Action & Adventure"
                    case .animals:return "Animals"
                    case .classics:return "Classics"
                    case .comicsAndGraphicNovels:return "Comics & Graphic Novels"
                    case .culturePlacesAndPeople:return "Culture, Places & People"
                    case .dystopian:return "Dystopian"
                    case .familyAndRelationships:return "Family & Relationships"
                    case .fantasy:return "Fantasy"
                    case .fairyTalesMythsAndFables:return "Fairy Tales, Myths & Fables"
                    case .favoriteCharacters:return "Favorite Characters"
                    case .historical:return "Historical"
                    case .holidaysAndCelebrations:return "Holidays & Celebrations"
                    case .horrorMonstersAndGhosts:return "Horror, Monsters & Ghosts"
                    case .crimeAndMystery:return "Crime & Mystery"
                    case .nature:return "Nature"
                    case .religion:return "Religion"
                    case .romance:return "Romance"
                    case .sciFi:return "Sci-Fi"
                    case .comingOfAge:return "Coming of Age"
                    case .sportsAndRecreation:return "Sports & Recreation"
                    case .transportation:return "Transportation"
                }
            }
        }
        
        public enum HolidaysAndCelebrations: Int, CaseIterable {
            case holidaysAndCelebrations = 11203
            case birthdays = 11204
            case christmasAndAdvent = 11205
            case easterAndLent = 11206
            case general = 11207
            case halloween = 11208
            case hanukkah = 11209
            case other = 11210
            case passover = 11211
            case patrioticHolidays = 11212
            case ramadan = 11213
            case thanksgiving = 11214
            case valentinesDay = 11215
            
            public var stringValue: String {
                switch self {
                    case .holidaysAndCelebrations:return "Holidays & Celebrations"
                    case .birthdays:return "Birthdays"
                    case .christmasAndAdvent:return "Christmas & Advent"
                    case .easterAndLent:return "Easter & Lent"
                    case .general:return "General"
                    case .halloween:return "Halloween"
                    case .hanukkah:return "Hanukkah"
                    case .other:return "Other"
                    case .passover:return "Passover"
                    case .patrioticHolidays:return "Patriotic Holidays"
                    case .ramadan:return "Ramadan"
                    case .thanksgiving:return "Thanksgiving"
                    case .valentinesDay:return "Valentine's Day"
                }
            }
        }
        
        public enum Humor: Int, CaseIterable {
            case humor = 11216
            case jokesAndRiddles = 11217
            
            public var stringValue: String {
                switch self {
                    case .humor:return "Humor"
                    case .jokesAndRiddles:return "Jokes & Riddles"
                }
            }
        }
    }
}
