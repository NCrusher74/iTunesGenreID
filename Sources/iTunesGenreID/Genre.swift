enum Genre: CaseIterable {
    case music(Music)
    case musicVideos(MusicVideos)
    case podcasts(Podcasts)
    case tvShow(TV)
    case movies(Movies)
    case appStore(AppStore)
    case macAppStore(MacAppStore)
    case iPodGames
    case tones(Tones)
    case books(Books)
    case textbooks(Textbooks)
    case audiobooks(Audiobooks)
    case iTunesU(ITunesU)
    
    static var allCases: [Genre] {
        var array: [Genre] = [.iPodGames]
        array.append(contentsOf: Music.allCases.map({ Genre.music($0)}))
        array.append(contentsOf: MusicVideos.allCases.map({ Genre.musicVideos($0)}))
        array.append(contentsOf: Podcasts.allCases.map({ Genre.podcasts($0)}))
        array.append(contentsOf: TV.allCases.map({ Genre.tvShow($0)}))
        array.append(contentsOf: Movies.allCases.map({ Genre.movies($0)}))
        array.append(contentsOf: AppStore.allCases.map({ Genre.appStore($0)}))
        array.append(contentsOf: MacAppStore.allCases.map({ Genre.macAppStore($0)}))
        array.append(contentsOf: Tones.allCases.map({ Genre.tones($0)}))
        array.append(contentsOf: Books.allCases.map({ Genre.books($0)}))
        array.append(contentsOf: Textbooks.allCases.map({ Genre.textbooks($0)}))
        array.append(contentsOf: Audiobooks.allCases.map({ Genre.audiobooks($0)}))
        array.append(contentsOf: ITunesU.allCases.map({ Genre.iTunesU($0)}))
        return array
    }
    
    var identifier: Int? {
        switch self {
            case .podcasts(let subject): return subject.identifier
            case .musicVideos(let genre): return genre.identifier
            case .tvShow(let genre): return genre.rawValue
            case .movies(let genre): return genre.rawValue
            case .music(let genre): return genre.identifier
            case .iPodGames: return 35
            case .appStore(let subject): return subject.identifier
            case .tones(let genre): return genre.identifier
            case .books(let genre): return genre.identifier
            case .macAppStore(let subject): return subject.identifier
            case .textbooks(let subject): return subject.identifier
            case .iTunesU(let subject): return subject.identifier
            case .audiobooks(let genre): return genre.rawValue
        }
    }
    
    var stringValue: String {
        switch self {
            case .music(let genre):
                switch genre {
                    case .music: return genre.stringValue
                    default: return "\(Music.music.stringValue)|\(genre.stringValue)"
                }
            case .musicVideos(let genre):
                switch genre {
                    case .musicVideos: return genre.stringValue
                    default: return "\(MusicVideos.musicVideos.stringValue)|\(genre.stringValue)"
                }
            case .podcasts(let subject):
                switch subject {
                    case .podcasts: return subject.stringValue
                    default: return "\(Podcasts.podcasts.stringValue)|\(subject.stringValue)"
                }
            case .tvShow(let genre):
                switch genre {
                    case .tvShows: return genre.stringValue
                    default: return "\(TV.tvShows.stringValue)|\(genre.stringValue)"
                }
            case .movies(let genre):
                switch genre {
                    case .movies: return genre.stringValue
                    default: return "\(Movies.movies.stringValue)|\(genre.stringValue)"
                }
            case .appStore(let subject):
                switch subject {
                    case .appStore: return subject.stringValue
                    default: return "\(AppStore.appStore.stringValue)|\(subject.stringValue)"
                }
            case .macAppStore(let subject):
                switch subject {
                    case .macAppStore: return subject.stringValue
                    default: return "\(MacAppStore.macAppStore.stringValue)|\(subject.stringValue)"
                }
            case .iPodGames: return "iPod Games"
            case .tones(let genre):
                switch genre {
                    case .tones: return genre.stringValue
                    default: return "\(Tones.tones.stringValue)|\(genre.stringValue)"
                }
            case .books(let genre):
                switch genre {
                    case .books: return genre.stringValue
                    default: return "\(Books.books.stringValue)|\(genre.stringValue)"
                }
            case .textbooks(let subject):
                switch subject {
                    case .textbooks: return subject.stringValue
                    default: return "\(Textbooks.textbooks.stringValue)|\(subject.stringValue)"
                }
            case .audiobooks(let genre):
                switch genre {
                    case .audiobooks: return genre.stringValue
                    default: return "\(Audiobooks.audiobooks.stringValue)|\(genre.stringValue)"
                }
            case .iTunesU(let subject):
                switch subject {
                    case .iTunesU: return subject.stringValue
                    default: return "\(ITunesU.iTunesU.stringValue)|\(subject.stringValue)"
                }
        }
    }
}
