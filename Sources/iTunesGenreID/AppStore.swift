//
//  AppStore.swift
//  
//
//  Created by Nolaine Crusher on 10/18/20.
//
enum AppStore: CaseIterable {
    case appStore
    case games(Games)
    case magazinesAndNewspapers(MagazinesAndNewspapers)
    case stickers(Stickers)
    case business
    case weather
    case utilities
    case travel
    case sports
    case socialNetworking
    case reference
    case productivity
    case photoAndVideo
    case news
    case navigation
    case music
    case lifestyle
    case healthAndFitness
    case finance
    case entertainment
    case education
    case books
    case medical
    case catalogs
    case foodAndDrink
    case shopping
    case developerTools
    case graphicsAndDesign

    static var allCases: [AppStore] {
        var array: [AppStore] = [
            .appStore,
            .business,
            .weather,
            .utilities,
            .travel,
            .sports,
            .socialNetworking,
            .reference,
            .productivity,
            .photoAndVideo,
            .news,
            .navigation,
            .music,
            .lifestyle,
            .healthAndFitness,
            .finance,
            .entertainment,
            .education,
            .books,
            .medical,
            .catalogs,
            .foodAndDrink,
            .shopping,
            .developerTools,
            .graphicsAndDesign
        ]
        array.append(contentsOf: Games.allCases.map({AppStore.games($0)}))
        array.append(contentsOf: MagazinesAndNewspapers.allCases.map({AppStore.magazinesAndNewspapers($0)}))
        array.append(contentsOf: Stickers.allCases.map({AppStore.stickers($0)}))
        return array
    }
    
    var identifier: Int {
        switch self {
            case .business: return 6000
            case .weather: return 6001
            case .utilities: return 6002
            case .travel: return 6003
            case .sports: return 6004
            case .socialNetworking: return 6005
            case .reference: return 6006
            case .productivity: return 6007
            case .photoAndVideo: return 6008
            case .news: return 6009
            case .navigation: return 6010
            case .music: return 6011
            case .lifestyle: return 6012
            case .healthAndFitness: return 6013
            case .finance: return 6015
            case .entertainment: return 6016
            case .education: return 6017
            case .books: return 6018
            case .medical: return 6020
            case .catalogs: return 6022
            case .foodAndDrink: return 6023
            case .shopping: return 6024
            case .developerTools: return 6026
            case .graphicsAndDesign: return 6027
            case .appStore: return 36
            case .games(let subject): return subject.rawValue
            case .magazinesAndNewspapers(let subject): return subject.rawValue
            case .stickers(let subject): return subject.rawValue
        }
    }
    
    var stringValue: String {
        switch self {
            case .business: return "Business"
            case .weather: return "Weather"
            case .utilities: return "Utilities"
            case .travel: return "Travel"
            case .sports: return "Sports"
            case .socialNetworking: return "Social Networking"
            case .reference: return "Reference"
            case .productivity: return "Productivity"
            case .photoAndVideo: return "Photo & Video"
            case .news: return "News"
            case .navigation: return "Navigation"
            case .music: return "Music"
            case .lifestyle: return "Lifestyle"
            case .healthAndFitness: return "Health & Fitness"
            case .finance: return "Finance"
            case .entertainment: return "Entertainment"
            case .education: return "Education"
            case .books: return "Books"
            case .medical: return "Medical"
            case .catalogs: return "Catalogs"
            case .foodAndDrink: return "Food & Drink"
            case .shopping: return "Shopping"
            case .developerTools: return "Developer Tools"
            case .graphicsAndDesign: return "Graphics & Design"
            case .appStore: return "App Store"
            case .games(let subject): return subject.stringValue
            case .magazinesAndNewspapers(let subject): return subject.stringValue
            case .stickers(let subject): return subject.stringValue
        }
    }
    
    enum Games: Int, CaseIterable {
        case games = 6014
        case action = 7001
        case adventure = 7002
        case casual = 7003
        case board = 7004
        case card = 7005
        case casino = 7006
        case dice = 7007
        case educational = 7008
        case family = 7009
        case music = 7011
        case puzzle = 7012
        case racing = 7013
        case rolePlaying = 7014
        case simulation = 7015
        case sports = 7016
        case strategy = 7017
        case trivia = 7018
        case word = 7019
        
        var stringValue: String {
            switch self {
                case .games: return "Games"
                case .action: return "Action"
                case .adventure: return "Adventure"
                case .casual: return "Casual"
                case .board: return "Board"
                case .card: return "Card"
                case .casino: return "Casino"
                case .dice: return "Dice"
                case .educational: return "Educational"
                case .family: return "Family"
                case .music: return "Music"
                case .puzzle: return "Puzzle"
                case .racing: return "Racing"
                case .rolePlaying: return "Role Playing"
                case .simulation: return "Simulation"
                case .sports: return "Sports"
                case .strategy: return "Strategy"
                case .trivia: return "Trivia"
                case .word: return "Word"
            }
        }
    }
    
    enum MagazinesAndNewspapers: Int, CaseIterable {
        case magazinesAndNewspapers = 6021
        case newsAndPolitics = 13001
        case fashionAndStyle = 13002
        case homeAndGarden = 13003
        case outdoorsAndNature = 13004
        case sportsAndLeisure = 13005
        case automotive = 13006
        case artsAndPhotography = 13007
        case bridesAndWeddings = 13008
        case businessAndInvesting = 13009
        case childrensMagazines = 13010
        case computersAndInternet = 13011
        case cookingFoodAndDrink = 13012
        case craftsAndHobbies = 13013
        case electronicsAndAudio = 13014
        case entertainment = 13015
        case healthMindAndBody = 13017
        case history = 13018
        case literaryMagazinesAndJournals = 13019
        case mensInterest = 13020
        case moviesAndMusic = 13021
        case parentingAndFamily = 13023
        case pets = 13024
        case professionalAndTrade = 13025
        case regionalNews = 13026
        case science = 13027
        case teens = 13028
        case travelAndRegional = 13029
        case womensInterest = 13030
        
        var stringValue: String {
            switch self {
                case .magazinesAndNewspapers: return "MagazinesAndNewspapers"
                case .newsAndPolitics: return "NewsAndPolitics"
                case .fashionAndStyle: return "FashionAndStyle"
                case .homeAndGarden: return "HomeAndGarden"
                case .outdoorsAndNature: return "OutdoorsAndNature"
                case .sportsAndLeisure: return "SportsAndLeisure"
                case .automotive: return "Automotive"
                case .artsAndPhotography: return "ArtsAndPhotography"
                case .bridesAndWeddings: return "BridesAndWeddings"
                case .businessAndInvesting: return "BusinessAndInvesting"
                case .childrensMagazines: return "Children's Magazines"
                case .computersAndInternet: return "ComputersAndInternet"
                case .cookingFoodAndDrink: return "Cooking, FoodAndDrink"
                case .craftsAndHobbies: return "CraftsAndHobbies"
                case .electronicsAndAudio: return "ElectronicsAndAudio"
                case .entertainment: return "Entertainment"
                case .healthMindAndBody: return "Health, MindAndBody"
                case .history: return "History"
                case .literaryMagazinesAndJournals: return "Literary MagazinesAndJournals"
                case .mensInterest: return "Men's Interest"
                case .moviesAndMusic: return "MoviesAndMusic"
                case .parentingAndFamily: return "ParentingAndFamily"
                case .pets: return "Pets"
                case .professionalAndTrade: return "ProfessionalAndTrade"
                case .regionalNews: return "Regional News"
                case .science: return "Science"
                case .teens: return "Teens"
                case .travelAndRegional: return "TravelAndRegional"
                case .womensInterest: return "Women's Interest"
            }
        }
    }
    
    enum Stickers: Int, CaseIterable {
        case stickers = 6025
        case emojiAndExpressions = 16001
        case animalsAndNature = 16003
        case art = 16005
        case celebrations = 16006
        case celebrities = 16007
        case comicsAndCartoons = 16008
        case eatingAndDrinking = 16009
        case gaming = 16010
        case moviesAndTV = 16014
        case music = 16015
        case people = 16017
        case placesAndObjects = 16019
        case sportsAndActivities = 16021
        case kidsAndFamily = 16025
        case fashion = 16026
        
        var stringValue: String {
            switch self {
                case .stickers: return "Stickers"
                case .emojiAndExpressions: return "Emoji & Expressions"
                case .animalsAndNature: return "Animals & Nature"
                case .art: return "Art"
                case .celebrations: return "Celebrations"
                case .celebrities: return "Celebrities"
                case .comicsAndCartoons: return "Comics & Cartoons"
                case .eatingAndDrinking: return "Eating & Drinking"
                case .gaming: return "Gaming"
                case .moviesAndTV: return "Movies & TV"
                case .music: return "Music"
                case .people: return "People"
                case .placesAndObjects: return "Places & Objects"
                case .sportsAndActivities: return "Sports & Activities"
                case .kidsAndFamily: return "Kids & Family"
                case .fashion: return "Fashion"
            }
        }
    }
}

enum MacAppStore: CaseIterable {
    static var allCases: [MacAppStore] {
        var array: [MacAppStore] = [
            .macAppStore,
            .business,
            .developerTools,
            .education,
            .entertainment,
            .finance,
            .healthAndFitness,
            .lifestyle,
            .medical,
            .music,
            news,
            .photography,
            .productivity,
            .reference,
            .socialNetworking,
            .sports,
            .travel,
            .utilities,
            .video,
            .weather,
            .graphicsAndDesign]
        array.append(contentsOf: Games.allCases.map({MacAppStore.games($0)}))
        return array
    }
    
    case macAppStore
    case business
    case developerTools
    case education
    case entertainment
    case finance
    case games(Games)
    case healthAndFitness
    case lifestyle
    case medical
    case music
    case news
    case photography
    case productivity
    case reference
    case socialNetworking
    case sports
    case travel
    case utilities
    case video
    case weather
    case graphicsAndDesign

    var identifier: Int {
        switch self {
            case .macAppStore: return 39
            case .business: return 12001
            case .developerTools: return 12002
            case .education: return 12003
            case .entertainment: return 12004
            case .finance: return 12005
            case .healthAndFitness: return 12007
            case .lifestyle: return 12008
            case .medical: return 12010
            case .music: return 12011
            case .news: return 12012
            case .photography: return 12013
            case .productivity: return 12014
            case .reference: return 12015
            case .socialNetworking: return 12016
            case .sports: return 12017
            case .travel: return 12018
            case .utilities: return 12019
            case .video: return 12020
            case .weather: return 12021
            case .graphicsAndDesign: return 12022
            case .games(let subject): return subject.rawValue
        }
    }
    
    var stringValue: String {
        switch self {
            case .macAppStore: return "Mac App Store"
            case .business: return "Business"
            case .developerTools: return "Developer Tools"
            case .education: return "Education"
            case .entertainment: return "Entertainment"
            case .finance: return "Finance"
            case .healthAndFitness: return "Health & Fitness"
            case .lifestyle: return "Lifestyle"
            case .medical: return "Medical"
            case .music: return "Music"
            case .news: return "News"
            case .photography: return "Photography"
            case .productivity: return "Productivity"
            case .reference: return "Reference"
            case .socialNetworking: return "Social Networking"
            case .sports: return "Sports"
            case .travel: return "Travel"
            case .utilities: return "Utilities"
            case .video: return "Video"
            case .weather: return "Weather"
            case .graphicsAndDesign: return "Graphics & Design"
            case .games(let subject): return subject.stringValue
        }
    }
    
    enum Games: Int, CaseIterable {
        case games = 12006
        case action = 12201
        case adventure = 12202
        case casual = 12203
        case board = 12204
        case card = 12205
        case casino = 12206
        case dice = 12207
        case educational = 12208
        case family = 12209
        case kids = 12210
        case music = 12211
        case puzzle = 12212
        case racing = 12213
        case rolePlaying = 12214
        case simulation = 12215
        case sports = 12216
        case strategy = 12217
        case trivia = 12218
        case word = 12219
        
        var stringValue: String {
            switch self {
                case .games: return "Games"
                case .action: return "Action"
                case .adventure: return "Adventure"
                case .casual: return "Casual"
                case .board: return "Board"
                case .card: return "Card"
                case .casino: return "Casino"
                case .dice: return "Dice"
                case .educational: return "Educational"
                case .family: return "Family"
                case .kids: return "Kids"
                case .music: return "Music"
                case .puzzle: return "Puzzle"
                case .racing: return "Racing"
                case .rolePlaying: return "Role Playing"
                case .simulation: return "Simulation"
                case .sports: return "Sports"
                case .strategy: return "Strategy"
                case .trivia: return "Trivia"
                case .word: return "Word"
            }
        }
    }
}
