//enum Category {
//    case music
//    case musicVideo
//    case podcast
//    case tvShow(TVShow)
//    case movie(Movie)
//    case appStore(AppStore)
//    case macAppStore(MacAppStore)
//    case iPodGames
//    case tones
//    case books(Books)
//    case textbooks(Textbooks)
//    case audiobooks(Audiobooks)
//    case iTunesU
//    
//    var identifier: Int? {
//        switch self {
//            case .podcast: return 26
//            case .musicVideo: return 31
//            case .tvShow(let genre): return genre.identifier
//            case .movie(let genre): return genre.identifier
//            case .music: return 34
//            case .iPodGames: return 35
//            case .appStore(let genre): return genre.identifier
//            case .tones: return 37
//            case .books(let genre):
//                if let identifier = genre.identifier {
//                    return identifier
//                } else {
//                    return nil
//                }
//            case .macAppStore(let genre): return genre.identifier
//            case .textbooks(let subject):
//                if let identifier = subject.identifier {
//                    return identifier
//                } else {
//                    return nil
//                }
//            case .iTunesU: return 40000000
//            case .audiobooks(let genre): return genre.identifier
//        }
//    }
//    
//    var stringValue: String {
//        switch self {
//            case .music: return "Music"
//            case .musicVideo: return "Music Videos"
//            case .podcast: return "Podcasts"
//            case .tvShow(let genre):
//                switch genre {
//                    case .tvShow: return genre.stringValue
//                    default: return "\(TVShow.tvShow.stringValue)|\(genre.stringValue)"
//                }
//            case .movie(let genre):
//                switch genre {
//                    case .movie: return genre.stringValue
//                    default: return "\(Movie.movie.stringValue)|\(genre.stringValue)"
//                }
//            case .appStore(let genre):
//                switch genre {
//                    case .appStore: return genre.stringValue
//                    default: return "\(AppStore.appStore.stringValue)|\(genre.stringValue)"
//                }
//            case .macAppStore(let genre):
//                switch genre {
//                    case .macAppStore: return genre.stringValue
//                    default: return "\(MacAppStore.macAppStore.stringValue)|\(genre.stringValue)"
//                }
//            case .iPodGames: return "iPod Games"
//            case .tones: return "Tones"
//            case .books(let genre):
//                switch genre {
//                    case .books: return genre.stringValue
//                    default: return "\(Books.books.stringValue)|\(genre.stringValue)"
//                }
//            case .textbooks(let genre):
//                switch genre {
//                    case .textbooks: return genre.stringValue
//                    default: return "\(Books.books.stringValue)|\(genre.stringValue)"
//                }
//            case .audiobooks(let genre):
//                switch genre {
//                    case .audiobooks: return genre.stringValue
//                    default: return "\(Audiobooks.audiobooks.stringValue)|\(genre.stringValue)"
//                }
//            case .iTunesU: return "iTunes U"
//        }
//    }
//}
