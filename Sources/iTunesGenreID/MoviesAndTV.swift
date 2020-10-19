//
//  MoviesAndTV.swift
//  
//
//  Created by Nolaine Crusher on 10/18/20.
//

import Foundation
enum TV: Int, CaseIterable {
    case tvShows = 32
    case comedy = 4000
    case drama = 4001
    case animation = 4002
    case actionAndAdventure = 4003
    case classics = 4004
    case kidsAndFamily = 4005
    case nonfiction = 4006
    case realityTV = 4007
    case sciFiAndFantasy = 4008
    case sports = 4009
    case teens = 4010
    case latinoTV = 4011

    var stringValue: String {
        switch self {
            case .tvShows: return "TV Shows"
            case .comedy: return "Comedy"
            case .drama: return "Drama"
            case .animation: return "Animation"
            case .actionAndAdventure: return "Action & Adventure"
            case .classics: return "Classics"
            case .kidsAndFamily: return "Kids & Family"
            case .nonfiction: return "Nonfiction"
            case .realityTV: return "Reality TV"
            case .sciFiAndFantasy: return "Sci-Fi & Fantasy"
            case .sports: return "Sports"
            case .teens: return "Teens"
            case .latinoTV: return "Latino TV"
        }
    }
}

enum Movies: Int, CaseIterable {
    case movies = 33
    case actionAndAdventure = 4401
    case anime = 4402
    case classics = 4403
    case comedy = 4404
    case documentary = 4405
    case drama = 4406
    case foreign = 4407
    case horror = 4408
    case independent = 4409
    case kidsAndFamily = 4410
    case musicals = 4411
    case romance = 4412
    case sciFiAndFantasy = 4413
    case shortFilms = 4414
    case specialInterest = 4415
    case thriller = 4416
    case sports = 4417
    case western = 4418
    case urban = 4419
    case holiday = 4420
    case madeForTV = 4421
    case concertFilms = 4422
    case musicDocumentaries = 4423
    case musicFeatureFilms = 4424
    case japaneseCinema = 4425
    case jidaigeki = 4426
    case tokusatsu = 4427
    case koreanCinema = 4428
    case russian = 4429
    case turkish = 4430
    case bollywood = 4431
    case regionalIndian = 4432
    case middleEastern = 4433
    case african = 4434

    var stringValue: String {
        switch self {
            case .movies: return "Movies"
            case .actionAndAdventure: return "Action & Adventure"
            case .anime: return "Anime"
            case .classics: return "Classics"
            case .comedy: return "Comedy"
            case .documentary: return "Documentary"
            case .drama: return "Drama"
            case .foreign: return "Foreign"
            case .horror: return "Horror"
            case .independent: return "Independent"
            case .kidsAndFamily: return "Kids & Family"
            case .musicals: return "Musicals"
            case .romance: return "Romance"
            case .sciFiAndFantasy: return "Sci-Fi & Fantasy"
            case .shortFilms: return "Short Films"
            case .specialInterest: return "Special Interest"
            case .thriller: return "Thriller"
            case .sports: return "Sports"
            case .western: return "Western"
            case .urban: return "Urban"
            case .holiday: return "Holiday"
            case .madeForTV: return "Made for TV"
            case .concertFilms: return "Concert Films"
            case .musicDocumentaries: return "Music Documentaries"
            case .musicFeatureFilms: return "Music Feature Films"
            case .japaneseCinema: return "Japanese Cinema"
            case .jidaigeki: return "Jidaigeki"
            case .tokusatsu: return "Tokusatsu"
            case .koreanCinema: return "Korean Cinema"
            case .russian: return "Russian"
            case .turkish: return "Turkish"
            case .bollywood: return "Bollywood"
            case .regionalIndian: return "Regional Indian"
            case .middleEastern: return "Middle Eastern"
            case .african: return "African"
        }
    }
}
