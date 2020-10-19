//
//  File.swift
//  
//
//  Created by Nolaine Crusher on 10/18/20.
//

import Foundation
enum Audiobooks: Int, CaseIterable {
    case audiobooks = 50000024
    case news = 74
    case programsAndPerformances = 75
    case fiction = 50000040
    case artsAndEntertainment = 50000041
    case biographiesAndMemoirs = 50000042
    case businessAndPersonalFinance = 50000043
    case kidsAndYoungAdults = 50000044
    case classics = 50000045
    case comedy = 50000046
    case dramaAndPoetry = 50000047
    case speakersAndStorytellers = 50000048
    case history = 50000049
    case languages = 50000050
    case mysteriesAndThrillers = 50000051
    case nonfiction = 50000052
    case religionAndSpirituality = 50000053
    case scienceAndNature = 50000054
    case sciFiAndFantasy = 50000055
    case selfDevelopment = 50000056
    case sportsAndOutdoors = 50000057
    case technology = 50000058
    case travelAndAdventure = 50000059
    case romance = 50000069
    case audiobooksLatino = 50000070
    case erotica = 50000092
    case lightNovels = 50000093

    var stringValue: String {
        switch self {
            case .audiobooks: return "Audiobooks"
            case .news: return "News"
            case .programsAndPerformances: return "Programs & Performances"
            case .fiction: return "Fiction"
            case .artsAndEntertainment: return "Arts & Entertainment"
            case .biographiesAndMemoirs: return "Biographies & Memoirs"
            case .businessAndPersonalFinance: return "Business & Personal Finance"
            case .kidsAndYoungAdults: return "Kids & Young Adults"
            case .classics: return "Classics"
            case .comedy: return "Comedy"
            case .dramaAndPoetry: return "Drama & Poetry"
            case .speakersAndStorytellers: return "Speakers & Storytellers"
            case .history: return "History"
            case .languages: return "Languages"
            case .mysteriesAndThrillers: return "Mysteries & Thrillers"
            case .nonfiction: return "Nonfiction"
            case .religionAndSpirituality: return "Religion & Spirituality"
            case .scienceAndNature: return "Science & Nature"
            case .sciFiAndFantasy: return "Sci Fi & Fantasy"
            case .selfDevelopment: return "Self-Development"
            case .sportsAndOutdoors: return "Sports & Outdoors"
            case .technology: return "Technology"
            case .travelAndAdventure: return "Travel & Adventure"
            case .romance: return "Romance"
            case .audiobooksLatino: return "Audiobooks Latino"
            case .erotica: return "Erotica"
            case .lightNovels: return "Light Novels"
        }
    }
}
