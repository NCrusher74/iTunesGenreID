//
//  Music.swift
//  
//
//  Created by Nolaine Crusher on 10/20/20.
//

import Foundation
public enum Music {
    case music
    case childrensMusic
    case jPop
    case enka
    case anime
    case kayokyoku
    case fitnessAndWorkout
    case karaoke
    case instrumental
    case fitnessMusic
    case fitnessPop
    case fitnessDance
    case fitnessHipHop
    case fitnessRock
    case fitnessAltIndie
    case fitnessLatino
    case fitnessCountry
    case fitnessWorld
    case fitnessNewAge
    case fitnessClassical
    case childrensLullabies
    case childrensSingAlong
    case childrensStories
    case orchestral
    case marchingBand
    case spokenWord
    case disney
    case frenchPop
    case germanPop
    case germanFolk
    case blues(Blues)
    case comedy(Comedy)
    case classical(Classical)
    case country(Country)
    case electronic(Electronic)
    case holiday(Holiday)
    case singerSongwriter(SingerSongwriter)
    case alternative(Alternative)
    case dance(Dance)
    case hipHopAndRap(HipHopAndRap)
    case jazz(Jazz)
    case latino(Latino)
    case newAge(NewAge)
    case pop(Pop)
    case rAndBSoul(RandBSoul)
    case reggae(Reggae)
    case rock(Rock)
    case soundtrack(Soundtrack)
    case vocal(Vocal)
    case world(World)
    case arabic(Arabic)
    case brazilian(Brazilian)
    case chinese(Chinese)
    case christianAndGospel(ChristianAndGospel)
    case easyListening(EasyListening)
    case folk(Folk)
    case indian(Indian)
    case korean(Korean)
    case african(African)
    case turkish(Turkish)
    case russian(Russian)
    case cuban(Cuban)
    case tarab(Tarab)

    static var allCases: [Music] {
        var array: [Music] = [
            .music,
                .childrensMusic,
                .jPop,
                .enka,
                .anime,
                .kayokyoku,
                .fitnessAndWorkout,
                .karaoke,
                .instrumental,
                .fitnessMusic,
                .fitnessPop,
                .fitnessDance,
                .fitnessHipHop,
                .fitnessRock,
                .fitnessAltIndie,
                .fitnessLatino,
                .fitnessCountry,
                .fitnessWorld,
                .fitnessNewAge,
                .fitnessClassical,
                .childrensLullabies,
                .childrensSingAlong,
                .childrensStories,
                .orchestral,
                .marchingBand,
                .spokenWord,
                .disney,
                .frenchPop,
                .germanPop,
                .germanFolk]
        array.append(contentsOf: Alternative.allCases.map({Music.alternative($0)}))
        array.append(contentsOf: Blues.allCases.map({Music.blues($0)}))
        array.append(contentsOf: Classical.allCases.map({Music.classical($0)}))
        array.append(contentsOf: Comedy.allCases.map({Music.comedy($0)}))
        array.append(contentsOf: Country.allCases.map({Music.country($0)}))
        array.append(contentsOf: Dance.allCases.map({Music.dance($0)}))
        array.append(contentsOf: Electronic.allCases.map({Music.electronic($0)}))
        array.append(contentsOf: HipHopAndRap.allCases.map({Music.hipHopAndRap($0)}))
        array.append(contentsOf: Holiday.allCases.map({Music.holiday($0)}))
        array.append(contentsOf: Jazz.allCases.map({Music.jazz($0)}))
        array.append(contentsOf: Latino.allCases.map({Music.latino($0)}))
        array.append(contentsOf: NewAge.allCases.map({Music.newAge($0)}))
        array.append(contentsOf: Pop.allCases.map({Music.pop($0)}))
        array.append(contentsOf: RandBSoul.allCases.map({Music.rAndBSoul($0)}))
        array.append(contentsOf: Reggae.allCases.map({Music.reggae($0)}))
        array.append(contentsOf: Rock.allCases.map({Music.rock($0)}))
        array.append(contentsOf: SingerSongwriter.allCases.map({Music.singerSongwriter($0)}))
        array.append(contentsOf: Soundtrack.allCases.map({Music.soundtrack($0)}))
        array.append(contentsOf: Vocal.allCases.map({Music.vocal($0)}))
        array.append(contentsOf: World.allCases.map({Music.world($0)}))
        array.append(contentsOf: Arabic.allCases.map({Music.arabic($0)}))
        array.append(contentsOf: Brazilian.allCases.map({Music.brazilian($0)}))
        array.append(contentsOf: Chinese.allCases.map({Music.chinese($0)}))
        array.append(contentsOf: ChristianAndGospel.allCases.map({Music.christianAndGospel($0)}))
        array.append(contentsOf: EasyListening.allCases.map({Music.easyListening($0)}))
        array.append(contentsOf: Folk.allCases.map({Music.folk($0)}))
        array.append(contentsOf: Indian.allCases.map({Music.indian($0)}))
        array.append(contentsOf: Korean.allCases.map({Music.korean($0)}))
        array.append(contentsOf: African.allCases.map({Music.african($0)}))
        array.append(contentsOf: Turkish.allCases.map({Music.turkish($0)}))
        array.append(contentsOf: Russian.allCases.map({Music.russian($0)}))
        array.append(contentsOf: Cuban.allCases.map({Music.cuban($0)}))
        array.append(contentsOf: Tarab.allCases.map({Music.tarab($0)}))
        return array
    }
    
    public var identifier: Int {
        switch self {
            case .music: return 34
            case .childrensMusic: return 4
            case .jPop: return 27
            case .enka: return 28
            case .anime: return 29
            case .kayokyoku: return 30
            case .fitnessAndWorkout: return 50
            case .karaoke: return 52
            case .instrumental: return 53
            case .fitnessMusic: return 500
            case .fitnessPop: return 501
            case .fitnessDance: return 502
            case .fitnessHipHop: return 503
            case .fitnessRock: return 504
            case .fitnessAltIndie: return 505
            case .fitnessLatino: return 506
            case .fitnessCountry: return 507
            case .fitnessWorld: return 508
            case .fitnessNewAge: return 509
            case .fitnessClassical: return 510
            case .childrensLullabies: return 1014
            case .childrensSingAlong: return 1015
            case .childrensStories: return 1016
            case .orchestral: return 1290
            case .marchingBand: return 1291
            case .spokenWord: return 50000061
            case .disney: return 50000063
            case .frenchPop: return 50000064
            case .germanPop: return 50000066
            case .germanFolk: return 50000068
            case .alternative(let genre): return genre.rawValue
            case .blues(let genre): return genre.rawValue
            case .classical(let genre): return genre.rawValue
            case .comedy(let genre): return genre.rawValue
            case .country(let genre): return genre.rawValue
            case .dance(let genre): return genre.rawValue
            case .electronic(let genre): return genre.rawValue
            case .hipHopAndRap(let genre): return genre.rawValue
            case .holiday(let genre): return genre.identifier
            case .jazz(let genre): return genre.rawValue
            case .latino(let genre): return genre.rawValue
            case .newAge(let genre): return genre.rawValue
            case .pop(let genre): return genre.rawValue
            case .rAndBSoul(let genre): return genre.rawValue
            case .reggae(let genre): return genre.rawValue
            case .rock(let genre): return genre.rawValue
            case .singerSongwriter(let genre): return genre.rawValue
            case .soundtrack(let genre): return genre.rawValue
            case .vocal(let genre): return genre.rawValue
            case .world(let genre): return genre.rawValue
            case .arabic(let genre): return genre.identifier
            case .brazilian(let genre): return genre.rawValue
            case .chinese(let genre): return genre.rawValue
            case .christianAndGospel(let genre): return genre.rawValue
            case .easyListening(let genre): return genre.rawValue
            case .folk(let genre): return genre.rawValue
            case .indian(let genre): return genre.identifier
            case .korean(let genre): return genre.rawValue
            case .african(let genre): return genre.rawValue
            case .turkish(let genre): return genre.rawValue
            case .russian(let genre): return genre.rawValue
            case .cuban(let genre): return genre.rawValue
            case .tarab(let genre): return genre.rawValue
        }
    }
    
    public var stringValue: String {
        switch self {
            case .music: return "Music"
            case .childrensMusic: return "Children's Music"
            case .jPop: return "J-Pop"
            case .enka: return "Enka"
            case .anime: return "Anime"
            case .kayokyoku: return "Kayokyoku"
            case .fitnessAndWorkout: return "Fitness & Workout"
            case .karaoke: return "Karaoke"
            case .instrumental: return "Instrumental"
            case .fitnessMusic: return "Fitness Music"
            case .fitnessPop: return "Fitness Pop"
            case .fitnessDance: return "Fitness Dance"
            case .fitnessHipHop: return "Fitness Hip-Hop"
            case .fitnessRock: return "Fitness Rock"
            case .fitnessAltIndie: return "Fitness Alt/Indie"
            case .fitnessLatino: return "Fitness Latino"
            case .fitnessCountry: return "Fitness Country"
            case .fitnessWorld: return "Fitness World"
            case .fitnessNewAge: return "Fitness New Age"
            case .fitnessClassical: return "Fitness Classical"
            case .childrensLullabies: return "Children's Lullabies"
            case .childrensSingAlong: return "Children's Sing-Along"
            case .childrensStories: return "Children's Stories"
            case .orchestral: return "Orchestral"
            case .marchingBand: return "Marching"
            case .spokenWord: return "Spoken Word"
            case .disney: return "Disney"
            case .frenchPop: return "French Pop"
            case .germanPop: return "German Pop"
            case .germanFolk: return "German Folk"
            case .alternative(let genre):
                switch genre {
                    case .alternative: return genre.stringValue
                    default: return "\(Alternative.alternative.stringValue)|\(genre.stringValue)"
                }
            case .blues(let genre):
                switch genre {
                    case .blues: return genre.stringValue
                    default: return "\(Blues.blues.stringValue)|\(genre.stringValue)"
                }
            case .classical(let genre):
                switch genre {
                    case .classical: return genre.stringValue
                    default: return "\(Classical.classical.stringValue)|\(genre.stringValue)"
                }
            case .comedy(let genre):
                switch genre {
                    case .comedy: return genre.stringValue
                    default: return "\(Comedy.comedy.stringValue)|\(genre.stringValue)"
                }
            case .country(let genre):
                switch genre {
                    case .country: return genre.stringValue
                    default: return "\(Country.country.stringValue)|\(genre.stringValue)"
                }
            case .dance(let genre):
                switch genre {
                    case .dance: return genre.stringValue
                    default: return "\(Dance.dance.stringValue)|\(genre.stringValue)"
                }
            case .electronic(let genre):
                switch genre {
                    case .electronic: return genre.stringValue
                    default: return "\(Electronic.electronic.stringValue)|\(genre.stringValue)"
                }
            case .hipHopAndRap(let genre):
                switch genre {
                    case .hipHopAndRap: return genre.stringValue
                    default: return "\(HipHopAndRap.hipHopAndRap.stringValue)|\(genre.stringValue)"
                }
            case .holiday(let genre):
                switch genre {
                    case .holiday: return genre.stringValue
                    default: return "\(Holiday.holiday.stringValue)|\(genre.stringValue)"
                }
            case .jazz(let genre):
                switch genre {
                    case .jazz: return genre.stringValue
                    default: return "\(Jazz.jazz.stringValue)|\(genre.stringValue)"
                }
            case .latino(let genre):
                switch genre {
                    case .latino: return genre.stringValue
                    default: return "\(Latino.latino.stringValue)|\(genre.stringValue)"
                }
            case .newAge(let genre):
                switch genre {
                    case .newAge: return genre.stringValue
                    default: return "\(NewAge.newAge.stringValue)|\(genre.stringValue)"
                }
            case .pop(let genre):
                switch genre {
                    case .pop: return genre.stringValue
                    default: return "\(Pop.pop.stringValue)|\(genre.stringValue)"
                }
            case .rAndBSoul(let genre):
                switch genre {
                    case .rAndBSoul: return genre.stringValue
                    default: return "\(RandBSoul.rAndBSoul.stringValue)|\(genre.stringValue)"
                }
            case .reggae(let genre):
                switch genre {
                    case .reggae: return genre.stringValue
                    default: return "\(Reggae.reggae.stringValue)|\(genre.stringValue)"
                }
            case .rock(let genre):
                switch genre {
                    case .rock: return genre.stringValue
                    default: return "\(Rock.rock.stringValue)|\(genre.stringValue)"
                }
            case .singerSongwriter(let genre):
                switch genre {
                    case .singerSongwriter: return genre.stringValue
                    default: return "\(SingerSongwriter.singerSongwriter.stringValue)|\(genre.stringValue)"
                }
            case .soundtrack(let genre):
                switch genre {
                    case .soundtrack: return genre.stringValue
                    default: return "\(Soundtrack.soundtrack.stringValue)|\(genre.stringValue)"
                }
            case .vocal(let genre):
                switch genre {
                    case .vocal: return genre.stringValue
                    default: return "\(Vocal.vocal.stringValue)|\(genre.stringValue)"
                }
            case .world(let genre):
                switch genre {
                    case .world: return genre.stringValue
                    default: return "\(World.world.stringValue)|\(genre.stringValue)"
                }
            case .arabic(let genre):
                switch genre {
                    case .arabic: return genre.stringValue
                    default: return "\(Arabic.arabic.stringValue)|\(genre.stringValue)"
                }
            case .brazilian(let genre):
                switch genre {
                    case .brazilian: return genre.stringValue
                    default: return "\(Brazilian.brazilian.stringValue)|\(genre.stringValue)"
                }
            case .chinese(let genre):
                switch genre {
                    case .chinese: return genre.stringValue
                    default: return "\(Chinese.chinese.stringValue)|\(genre.stringValue)"
                }
            case .christianAndGospel(let genre):
                switch genre {
                    case .christianAndGospel: return genre.stringValue
                    default: return "\(ChristianAndGospel.christianAndGospel.stringValue)|\(genre.stringValue)"
                }
            case .easyListening(let genre):
                switch genre {
                    case .easyListening: return genre.stringValue
                    default: return "\(EasyListening.easyListening.stringValue)|\(genre.stringValue)"
                }
            case .folk(let genre):
                switch genre {
                    case .folk: return genre.stringValue
                    default: return "\(Folk.folk.stringValue)|\(genre.stringValue)"
                }
            case .indian(let genre):
                switch genre {
                    case .indian: return genre.stringValue
                    default: return "\(Indian.indian.stringValue)|\(genre.stringValue)"
                }
            case .korean(let genre):
                switch genre {
                    case .korean: return genre.stringValue
                    default: return "\(Korean.korean.stringValue)|\(genre.stringValue)"
                }
            case .african(let genre):
                switch genre {
                    case .african: return genre.stringValue
                    default: return "\(African.african.stringValue)|\(genre.stringValue)"
                }
            case .turkish(let genre):
                switch genre {
                    case .turkish: return genre.stringValue
                    default: return "\(Turkish.turkish.stringValue)|\(genre.stringValue)"
                }
            case .russian(let genre):
                switch genre {
                    case .russian: return genre.stringValue
                    default: return "\(Russian.russian.stringValue)|\(genre.stringValue)"
                }
            case .cuban(let genre):
                switch genre {
                    case .cuban: return genre.stringValue
                    default: return "\(Cuban.cuban.stringValue)|\(genre.stringValue)"
                }
            case .tarab(let genre):
                switch genre {
                    case .tarab: return genre.stringValue
                    default: return "\(Tarab.tarab.stringValue)|\(genre.stringValue)"
                }
        }
    }
    
    public enum Blues: Int, CaseIterable {
        case blues = 2
        case acousticBlues = 1210
        case chicagoBlues = 1007
        case classicBlues = 1009
        case contemporaryBlues = 1010
        case countryBlues = 1011
        case deltaBlues = 1012
        case electricBlues = 1013
        
        public var stringValue: String {
            switch self {
                case .blues: return "Blues"
                case .acousticBlues: return "Acoustic Blues"
                case .chicagoBlues: return "Chicago Blues"
                case .classicBlues: return "Classic Blues"
                case .contemporaryBlues: return "Contemporary Blues"
                case .countryBlues: return "Country Blues"
                case .deltaBlues: return "Delta Blues"
                case .electricBlues: return "Electric Blues"
            }
        }
    }
    
    public enum Comedy: Int, CaseIterable {
        case comedy = 3
        case novelty = 1167
        case standupComedy = 1171
        
        public var stringValue: String {
            switch self {
                case .comedy: return "Comedy"
                case .novelty: return "Novelty"
                case .standupComedy: return "Standup Comedy"
            }
        }
    }

    public enum Classical: Int, CaseIterable {
        case classical = 5
        case opera = 9
        case avantGarde = 1017
        case baroqueEra = 1018
        case chamberMusic = 1019
        case chant = 1020
        case choral = 1021
        case classicalCrossover = 1022
        case earlyMusic = 1023
        case highClassical = 1211
        case impressionist = 1024
        case medievalEra = 1025
        case minimalism = 1026
        case modernEra = 1027
        case orchestral = 1029
        case renaissance = 1030
        case romanticEra = 1031
        case weddingMusic = 1032
        case artSong = 100001
        case brassAndWoodwinds = 100002
        case soloInstrumental = 100003
        case contemporaryEra = 100004
        case oratorio = 100005
        case cantata = 100006
        case electronic = 100007
        case sacred = 100008
        case guitar = 100009
        case piano = 100010
        case violin = 100011
        case cello = 100012
        case percussion = 100013

        public var stringValue: String {
            switch self {
                case .classical: return "Classical"
                case .opera: return "Opera"
                case .avantGarde: return "Avant-Garde"
                case .baroqueEra: return "Baroque Era"
                case .chamberMusic: return "Chamber Music"
                case .chant: return "Chant"
                case .choral: return "Choral"
                case .classicalCrossover: return "Classical Crossover"
                case .earlyMusic: return "Early Music"
                case .highClassical: return "High Classical"
                case .impressionist: return "Impressionist"
                case .medievalEra: return "Medieval Era"
                case .minimalism: return "Minimalism"
                case .modernEra: return "Modern Era"
                case .orchestral: return "Orchestral"
                case .renaissance: return "Renaissance"
                case .romanticEra: return "Romantic Era"
                case .weddingMusic: return "Wedding Music"
                case .artSong: return "Art Song"
                case .brassAndWoodwinds: return "Brass & Woodwinds"
                case .soloInstrumental: return "Solo Instrumental"
                case .contemporaryEra: return "Contemporary Era"
                case .oratorio: return "Oratorio"
                case .cantata: return "Cantata"
                case .electronic: return "Electronic"
                case .sacred: return "Sacred"
                case .guitar: return "Guitar"
                case .piano: return "Piano"
                case .violin: return "Violin"
                case .cello: return "Cello"
                case .percussion: return "Percussion"
            }
        }
    }

    public enum Country: Int, CaseIterable {
        case country = 6
        case alternativeCountry = 1033
        case americana = 1034
        case bluegrass = 1035
        case contemporaryBluegrass = 1036
        case contemporaryCountry = 1037
        case countryGospel = 1038
        case honkyTonk = 1039
        case outlawCountry = 1040
        case thaiCountry = 1294
        case traditionalBluegrass = 1041
        case traditionalCountry = 1042
        case urbanCowboy = 1043

        public var stringValue: String {
            switch self {
                case .country: return "Country"
                case .alternativeCountry: return "Alternative Country"
                case .americana: return "Americana"
                case .bluegrass: return "Bluegrass"
                case .contemporaryBluegrass: return "Contemporary Bluegrass"
                case .contemporaryCountry: return "Contemporary Country"
                case .countryGospel: return "Country Gospel"
                case .honkyTonk: return "Honky Tonk"
                case .outlawCountry: return "Outlaw Country"
                case .thaiCountry: return "Thai Country"
                case .traditionalBluegrass: return "Traditional Bluegrass"
                case .traditionalCountry: return "Traditional Country"
                case .urbanCowboy: return "Urban Cowboy"
            }
        }
    }

    public enum Electronic: Int, CaseIterable {
        case electronic = 7
        case ambient = 1056
        case downtempo = 1057
        case electronica = 1058
        case idmExperimental = 1060
        case industrial = 1061
        case dubstep = 10014
        case bass = 10015
        case levantElectronic = 10100
        case electroChaabi = 10101
        case maghrebElectronic = 10102

        public var stringValue: String {
            switch self {
                case .electronic: return "Electronic"
                case .ambient: return "Ambient"
                case .downtempo: return "Downtempo"
                case .electronica: return "Electronica"
                case .idmExperimental: return "IDM/Experimental"
                case .industrial: return "Industrial"
                case .dubstep: return "Dubstep"
                case .bass: return "Bass"
                case .levantElectronic: return "Levant Electronic"
                case .electroChaabi: return "Electro-Cha'abi"
                case .maghrebElectronic: return "Maghreb Electronic"
            }
        }
    }

    public enum Holiday: CaseIterable {
        case holiday
        case chanukah
        case easter
        case halloween
        case holidayOther
        case thanksgiving
        case christmas(Christmas)
        
        static var allCases: [Holiday] {
            var array: [Holiday] = [.holiday,
                                    .chanukah,
                                    .easter,
                                    .halloween,
                                    .holidayOther,
                                    .thanksgiving]
            array.append(contentsOf: Christmas.allCases.map({Holiday.christmas($0)}))
            return array
        }

        public var identifier: Int {
            switch self {
                case .holiday: return 8
                case .chanukah: return 1079
                case .easter: return 1090
                case .halloween: return 1091
                case .holidayOther: return 1092
                case .thanksgiving: return 1093
                case .christmas(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .holiday: return "Holiday"
                case .chanukah: return "Chanukah"
                case .easter: return "Easter"
                case .halloween: return "Halloween"
                case .holidayOther: return "Holiday: Other"
                case .thanksgiving: return "Thanksgiving"
                case .christmas(let genre):
                    switch genre {
                        case .christmas: return "Christmas"
                        default: return "Christmas: \(genre.stringValue)"
                    }
            }
        }
        
        public enum Christmas: Int, CaseIterable {
            case christmas = 1080
            case childrens = 1081
            case classic = 1082
            case classical = 1083
            case jazz = 1084
            case modern = 1085
            case pop = 1086
            case rAndB = 1087
            case religious = 1088
            case rock = 1089

            public var stringValue: String {
                switch self {
                    case .christmas: return "Christmas"
                    case .childrens: return "Children's"
                    case .classic: return "Classic"
                    case .classical: return "Classical"
                    case .jazz: return "Jazz"
                    case .modern: return "Modern"
                    case .pop: return "Pop"
                    case .rAndB: return "R&B"
                    case .religious: return "Religious"
                    case .rock: return "Rock"
                }
            }
        }
    }

    public enum SingerSongwriter: Int, CaseIterable {
        case singerSongwriter = 10
        case alternativeFolk = 1062
        case contemporaryFolk = 1063
        case contemporarySingerSongwriter = 1064
        case folkRock = 1065
        case newAcoustic = 1066
        case traditionalFolk = 1067
        
        public var stringValue: String {
            switch self {
                case .singerSongwriter: return "Singer/Songwriter"
                case .alternativeFolk: return "Alternative Folk"
                case .contemporaryFolk: return "Contemporary Folk"
                case .contemporarySingerSongwriter: return "Contemporary Singer/Songwriter"
                case .folkRock: return "Folk-Rock"
                case .newAcoustic: return "New Acoustic"
                case .traditionalFolk: return "Traditional Folk"
            }
        }
    }

    public enum Jazz: Int, CaseIterable {
        case jazz = 11
        case avantGardeJazz = 1106
        case bigBand = 1052
        case bop = 1053
        case contemporaryJazz = 1107
        case coolJazz = 1209
        case crossoverJazz = 1108
        case dixieland = 1109
        case fusion = 1110
        case hardBop = 1207
        case latinJazz = 1111
        case mainstreamJazz = 1112
        case ragtime = 1113
        case smoothJazz = 1114
        case tradJazz = 1208
        case vocalJazz = 1175
        
        public var stringValue: String {
            switch self {
                case .jazz: return "Jazz"
                case .avantGardeJazz: return "Avant-Garde Jazz"
                case .bigBand: return "Big Band"
                case .bop: return "Bop"
                case .contemporaryJazz: return "Contemporary Jazz"
                case .coolJazz: return "Cool Jazz"
                case .crossoverJazz: return "Crossover Jazz"
                case .dixieland: return "Dixieland"
                case .fusion: return "Fusion"
                case .hardBop: return "Hard Bop"
                case .latinJazz: return "Latin Jazz"
                case .mainstreamJazz: return "Mainstream Jazz"
                case .ragtime: return "Ragtime"
                case .smoothJazz: return "Smooth Jazz"
                case .tradJazz: return "Trad Jazz"
                case .vocalJazz: return "Vocal Jazz"
            }
        }
    }
    
    public enum Latino: Int, CaseIterable {
        case latino = 12
        case rockyAlternativo = 1121
        case baladasyBoleros = 1120
        case contemporaryLatin = 1116
        case latinJazz = 1115
        case urbanoLatino = 1119
        case popLatino = 1117
        case raices = 1118
        case musicaMexicana = 1123
        case musicaTropical = 1124

        public var stringValue: String {
            switch self {
                case .latino: return "Latin"
                case .rockyAlternativo: return "Rock y Alternativo"
                case .baladasyBoleros: return "Baladas y Boleros"
                case .contemporaryLatin: return "Contemporary Latin"
                case .latinJazz: return "Latin Jazz"
                case .urbanoLatino: return "Urbano latino"
                case .popLatino: return "Pop in Spanish"
                case .raices: return "Raices"
                case .musicaMexicana: return "Musica Mexicana"
                case .musicaTropical: return "Musica Tropical"
            }
        }
    }

    public enum NewAge: Int, CaseIterable {
        case newAge = 13
        case environmental = 1125
        case healing = 1126
        case meditation = 1127
        case nature = 1128
        case relaxation = 1129
        case travel = 1130
        case yoga = 100021
        
        public var stringValue: String {
            switch self {
                case .newAge: return "New Age"
                case .environmental: return "Environmental"
                case .healing: return "Healing"
                case .meditation: return "Meditation"
                case .nature: return "Nature"
                case .relaxation: return "Relaxation"
                case .travel: return "Travel"
                case .yoga: return "Yoga"
            }
        }
    }

    public enum Pop: Int, CaseIterable {
        case pop = 14
        case kPop = 51
        case adultContemporary = 1131
        case britpop = 1132
        case cPop = 1250
        case cantopopHKPop = 1251
        case indoPop = 1259
        case koreanFolkPop = 1252
        case malaysianPop = 1255
        case mandopop = 1253
        case manillaSound = 1258
        case oldies = 1293
        case originalPilipinoMusic = 1257
        case pinoyPop = 1256
        case popRock = 1133
        case softRock = 1134
        case taiPop = 1254
        case teenPop = 1135
        case thaiPop = 1260
        case tribute = 100022
        case shows = 100023
        case turkishPop = 100069
        case levantPop = 100088
        case iraqiPop = 100089
        case egyptianPop = 100090
        case maghrebPop = 100091
        case khaleejiPop = 100092

        public var stringValue: String {
            switch self {
                case .pop: return "Pop"
                case .kPop: return "K-Pop"
                case .adultContemporary: return "Adult Contemporary"
                case .britpop: return "Britpop"
                case .cPop: return "C-Pop"
                case .cantopopHKPop: return "Cantopop/HK-Pop"
                case .indoPop: return "Indo Pop"
                case .koreanFolkPop: return "Korean Folk-Pop"
                case .malaysianPop: return "Malaysian Pop"
                case .mandopop: return "Mandopop"
                case .manillaSound: return "Manilla Sound"
                case .oldies: return "Oldies"
                case .originalPilipinoMusic: return "Original Pilipino Music"
                case .pinoyPop: return "Pinoy Pop"
                case .popRock: return "Pop/Rock"
                case .softRock: return "Soft Rock"
                case .taiPop: return "Tai-Pop"
                case .teenPop: return "Teen Pop"
                case .thaiPop: return "Thai Pop"
                case .tribute: return "Tribute"
                case .shows: return "Shows"
                case .turkishPop: return "Turkish Pop"
                case .levantPop: return "Levant Pop"
                case .iraqiPop: return "Iraqi Pop"
                case .egyptianPop: return "Egyptian Pop"
                case .maghrebPop: return "Maghreb Pop"
                case .khaleejiPop: return "Khaleeji Pop"
            }
        }
    }

    public enum RandBSoul: Int, CaseIterable {
        case rAndBSoul = 15
        case contemporaryRandB = 1136
        case disco = 1137
        case dooWop = 1138
        case funk = 1139
        case motown = 1140
        case neoSoul = 1141
        case quietStorm = 1142
        case soul = 1143
        
        public var stringValue: String {
            switch self {
                case .rAndBSoul: return "R&B/Soul"
                case .contemporaryRandB: return "Contemporary R&B"
                case .disco: return "Disco"
                case .dooWop: return "Doo Wop"
                case .funk: return "Funk"
                case .motown: return "Motown"
                case .neoSoul: return "Neo-Soul"
                case .soul: return "Soul"
                case .quietStorm: return "Quiet Storm"
            }
        }
    }

    public enum Soundtrack: Int, CaseIterable {
        case soundtrack = 16
        case foreignCinema = 1165
        case musicals = 1166
        case originalScore = 1168
        case soundEffects = 1288
        case tvSoundtrack = 1172
        case videoGame = 100032
        
        public var stringValue: String {
            switch self {
                case .soundtrack: return "Soundtrack"
                case .foreignCinema: return "Foreign Cinema"
                case .musicals: return "Musicals"
                case .originalScore: return "Original Score"
                case .soundEffects: return "Sound Effects"
                case .tvSoundtrack: return "TV Soundtrack"
                case .videoGame: return "Video Game"
            }
        }
    }

    public enum Dance: Int, CaseIterable {
        case dance = 17
        case breakbeat = 1044
        case exercise = 1045
        case garage = 1046
        case hardcore = 1047
        case house = 1048
        case jungleDrumAndBass = 1049
        case techno = 1050
        case trance = 1051
        case maghrebDance = 100105
        
        public var stringValue: String {
            switch self {
                case .dance: return "Dance"
                case .breakbeat: return "Breakbeat"
                case .exercise: return "Exercise"
                case .garage: return "Garage"
                case .hardcore: return "Hardcore"
                case .house: return "House"
                case .jungleDrumAndBass: return "Jungle/Drum'n'bass"
                case .techno: return "Techno"
                case .trance: return "Trance"
                case .maghrebDance: return "Maghreb Dance"
            }
        }
    }

    public enum HipHopAndRap: Int, CaseIterable {
        case hipHopAndRap = 18
        case alternativeRap = 1068
        case chineseHipHop = 1241
        case dirtySouth = 1069
        case eastCoastRap = 1070
        case gangstaRap = 1071
        case hardcoreRap = 1072
        case hipHop = 1073
        case koreanHipHop = 1242
        case latinRap = 1074
        case oldSchoolRap = 1075
        case rap = 1076
        case undergroundRap = 1077
        case westCoastRap = 1078
        case ukHipHop = 100016
        case turkishHipHopAndRap = 100072
        case levantHipHop = 100093
        case egyptianHipHop = 100094
        case maghrebHipHop = 100095
        case khaleejiHipHop = 100096
        
        public var stringValue: String {
            switch self {
                case .hipHopAndRap: return "Hip-Hop/Rap"
                case .alternativeRap: return "Alternative Rap"
                case .chineseHipHop: return "Chinese Hip-Hop"
                case .dirtySouth: return "Dirty South"
                case .eastCoastRap: return "East Coast Rap"
                case .gangstaRap: return "Gangsta Rap"
                case .hardcoreRap: return "Hardcore Rap"
                case .hipHop: return "Hip-Hop"
                case .koreanHipHop: return "Korean Hip-Hop"
                case .latinRap: return "Latin Rap"
                case .oldSchoolRap: return "Old School Rap"
                case .rap: return "Rap"
                case .undergroundRap: return "Underground Rap"
                case .westCoastRap: return "West Coast Rap"
                case .ukHipHop: return "UK Hip Hop"
                case .turkishHipHopAndRap: return "Turkish Hip-Hop/Rap"
                case .levantHipHop: return "Levant Hip-Hop"
                case .egyptianHipHop: return "Egyptian Hip-Hop"
                case .maghrebHipHop: return "Maghreb Hip-Hop"
                case .khaleejiHipHop: return "Khaleeji Hip-Hop"
            }
        }
    }

    public enum World: Int, CaseIterable {
        case world = 19
        case asia = 1204
        case australia = 1200
        case cajun = 1179
        case calypso = 1276
        case caribbean = 1195
        case celtic = 1180
        case celticFolk = 1181
        case contemporaryCeltic = 1182
        case dangdut = 1274
        case dini = 1271
        case europe = 1205
        case fado = 1297
        case farsi = 1282
        case flamenco = 1295
        case france = 1202
        case hawaii = 1199
        case iberia = 1298
        case indonesianReligious = 1275
        case israeli = 1283
        case japan = 1201
        case klezmer = 1187
        case northAmerica = 1198
        case polka = 1188
        case soca = 1277
        case southAfrica = 1206
        case southAmerica = 1196
        case tango = 1296
        case traditionalCeltic = 1189
        case worldbeat = 1190
        case zydeco = 1191
        case drinkingSongs = 1184
        case japanesePop = 1186
        
        public var stringValue: String {
            switch self {
                case .world: return "World"
                case .asia: return "Asia"
                case .australia: return "Australia"
                case .cajun: return "Cajun"
                case .calypso: return "Calypso"
                case .caribbean: return "Caribbean"
                case .celtic: return "Celtic"
                case .celticFolk: return "Celtic Folk"
                case .contemporaryCeltic: return "Contemporary Celtic"
                case .dangdut: return "Dangdut"
                case .dini: return "Dini"
                case .europe: return "Europe"
                case .fado: return "Fado"
                case .farsi: return "Farsi"
                case .flamenco: return "Flamenco"
                case .france: return "France"
                case .hawaii: return "Hawaii"
                case .iberia: return "Iberia"
                case .indonesianReligious: return "Indonesian Religious"
                case .israeli: return "Israeli"
                case .japan: return "Japan"
                case .klezmer: return "Klezmer"
                case .northAmerica: return "North America"
                case .polka: return "Polka"
                case .soca: return "Soca"
                case .southAfrica: return "South Africa"
                case .southAmerica: return "South America"
                case .tango: return "Tango"
                case .traditionalCeltic: return "Traditional Celtic"
                case .worldbeat: return "Worldbeat"
                case .zydeco: return "Zydeco"
                case .drinkingSongs: return "Drinking Songs"
                case .japanesePop: return "Japanese Pop"
            }
        }
    }

    public enum Alternative: Int, CaseIterable {
        case alternative = 20
        case chineseAlt = 1230
        case collegeRock = 1001
        case gothRock = 1002
        case grunge = 1003
        case indieRock = 1004
        case koreanIndie = 1231
        case newWave = 1005
        case punk = 1006
        case emo = 100018
        case popPunk = 100019
        case indiePop = 100020
        case turkishAlternative = 100071
        case indieLevant = 100097
        case indieEgyptian = 100098
        case indieMaghreb = 100099
        
        public var stringValue: String {
            switch self {
                case .alternative: return "Alternative"
                case .chineseAlt: return "Chinese Alt"
                case .collegeRock: return "College Rock"
                case .gothRock: return "Goth Rock"
                case .grunge: return "Grunge"
                case .indieRock: return "Indie Rock"
                case .koreanIndie: return "Korean Indie"
                case .newWave: return "New Wave"
                case .punk: return "Punk"
                case .emo: return "EMO"
                case .popPunk: return "Pop Punk"
                case .indiePop: return "Indie Pop"
                case .turkishAlternative: return "Turkish Alternative"
                case .indieLevant: return "Indie Levant"
                case .indieEgyptian: return "Indie Egyptian"
                case .indieMaghreb: return "Indie Maghreb"
            }
        }
    }

    public enum Rock: Int, CaseIterable {
        case rock = 21
        case adultAlternative = 1144
        case americanTradRock = 1145
        case arenaRock = 1146
        case bluesRock = 1147
        case britishInvasion = 1148
        case chineseRock = 1248
        case deathMetalBlackMetal = 1149
        case glamRock = 1150
        case hairMetal = 1151
        case hardRock = 1152
        case metal = 1153
        case jamBands = 1154
        case koreanRock = 1249
        case progRockArtRock = 1155
        case psychedelic = 1156
        case rockAndRoll = 1157
        case rockabilly = 1158
        case rootsRock = 1159
        case singerSongwriter = 1160
        case southernRock = 1161
        case surf = 1162
        case texMex = 1163
        case turkishRock = 100070
        
        public var stringValue: String {
            switch self {
                case .rock: return "Rock"
                case .adultAlternative: return "Adult Alternative"
                case .americanTradRock: return "American Trad Rock"
                case .arenaRock: return "Arena Rock"
                case .bluesRock: return "Blues-Rock"
                case .britishInvasion: return "British Invasion"
                case .chineseRock: return "Chinese Rock"
                case .deathMetalBlackMetal: return "Death Metal/Black Metal"
                case .glamRock: return "Glam Rock"
                case .hairMetal: return "Hair Metal"
                case .hardRock: return "Hard Rock"
                case .metal: return "Metal"
                case .jamBands: return "Jam Bands"
                case .koreanRock: return "Korean Rock"
                case .progRockArtRock: return "Prog-Rock/Art Rock"
                case .psychedelic: return "Psychedelic"
                case .rockAndRoll: return "Rock & Roll"
                case .rockabilly: return "Rockabilly"
                case .rootsRock: return "Roots Rock"
                case .singerSongwriter: return "Singer/Songwriter"
                case .southernRock: return "Southern Rock"
                case .surf: return "Surf"
                case .texMex: return "Tex-Mex"
                case .turkishRock: return "Turkish Rock"
            }
        }
    }

    public enum ChristianAndGospel: Int, CaseIterable {
        case christianAndGospel = 22
        case ccm = 1094
        case christianMetal = 1095
        case christianPop = 1096
        case christianRap = 1097
        case christianRock = 1098
        case classicChristian = 1099
        case contemporaryGospel = 1100
        case gospel = 1101
        case praiseAndWorship = 1103
        case southernGospel = 1104
        case traditionalGospel = 1105

        public var stringValue: String {
            switch self {
                case .christianAndGospel: return "Christian & Gospel"
                case .ccm: return "CCM"
                case .christianMetal: return "Christian Metal"
                case .christianPop: return "Christian Pop"
                case .christianRap: return "Christian Rap"
                case .christianRock: return "Christian Rock"
                case .classicChristian: return "Classic Christian"
                case .contemporaryGospel: return "Contemporary Gospel"
                case .gospel: return "Gospel"
                case .praiseAndWorship: return "Praise & Worship"
                case .southernGospel: return "Southern Gospel"
                case .traditionalGospel: return "Traditional Gospel"
            }
        }
    }

    public enum Vocal: Int, CaseIterable {
        case vocal = 23
        case standards = 1173
        case traditionalPop = 1174
        case trot = 1261
        case vocalPop = 1176

        public var stringValue: String {
            switch self {
                case .vocal: return "Vocal"
                case .standards: return "Standards"
                case .traditionalPop: return "Traditional Pop"
                case .trot: return "Trot"
                case .vocalPop: return "Vocal Pop"
            }
        }
    }

    public enum Reggae: Int, CaseIterable {
        case reggae = 24
        case modernDancehall = 1183
        case dub = 1193
        case rootsReggae = 1192
        case ska = 1194
        case loversRock = 100017

        public var stringValue: String {
            switch self {
                case .reggae: return "Reggae"
                case .modernDancehall: return "Modern Dancehall"
                case .dub: return "Dub"
                case .rootsReggae: return "Roots Reggae"
                case .ska: return "Ska"
                case .loversRock: return "Lovers Rock"
            }
        }
    }

    public enum EasyListening: Int, CaseIterable {
        case easyListening = 25
        case lounge = 1054
        case swing = 1055
        
        public var stringValue: String {
            switch self {
                case .easyListening: return "Easy Listening"
                case .lounge: return "Lounge"
                case .swing: return "Swing"
            }
        }
    }

    public enum Brazilian: Int, CaseIterable {
        case brazilian = 1122
        case axe = 1220
        case baileFunk = 1229
        case bossaNova = 1221
        case choro = 1222
        case forro = 1223
        case frevo = 1224
        case mpb = 1225
        case pagode = 1226
        case samba = 1227
        case sertanejo = 1228
        
        public var stringValue: String {
            switch self {
                case .brazilian: return "Brazilian"
                case .axe: return "Axe"
                case .baileFunk: return "Baile Funk"
                case .bossaNova: return "Bossa Nova"
                case .choro: return "Choro"
                case .forro: return "Forro"
                case .frevo: return "Frevo"
                case .mpb: return "MPB"
                case .pagode: return "Pagode"
                case .samba: return "Samba"
                case .sertanejo: return "Sertanejo"
            }
        }
    }

    public enum African: Int, CaseIterable {
        case african = 1203
        case afrikaans = 1281
        case afroBeat = 1177
        case afroPop = 1178
        case afroHouse = 100049
        case afroSoul = 100050
        case afrobeats = 100051
        case benga = 100052
        case bongoFlava = 100053
        case coupeDecale = 100054
        case gqom = 100055
        case highlife = 100056
        case kuduro = 100057
        case kizomba = 100058
        case kwaito = 100059
        case mbalax = 100060
        case ndombolo = 100061
        case shangaanElectro = 100062
        case soukous = 100063
        case taarab = 100064
        case zouglou = 100065
        case maskandi = 100073
        
        public var stringValue: String {
            switch self {
                case .african: return "African"
                case .afrikaans: return "Afrikaans"
                case .afroBeat: return "Afro-Beat"
                case .afroPop: return "Afro-Pop"
                case .afroHouse: return "Afro House"
                case .afroSoul: return "Afro Soul"
                case .afrobeats: return "Afrobeats"
                case .benga: return "Benga"
                case .bongoFlava: return "Bongo-Flava"
                case .coupeDecale: return "Coupe-Decale"
                case .gqom: return "Gqom"
                case .highlife: return "Highlife"
                case .kuduro: return "Kuduro"
                case .kizomba: return "Kizomba"
                case .kwaito: return "Kwaito"
                case .mbalax: return "Mbalax"
                case .ndombolo: return "Ndombolo"
                case .shangaanElectro: return "Shangaan Electro"
                case .soukous: return "Soukous"
                case .taarab: return "Taarab"
                case .zouglou: return "Zouglou"
                case .maskandi: return "Maskandi"
            }
        }
    }

    public enum Arabic: CaseIterable {
        case arabic
        case arabicPop
        case islamic
        case northAfrican
        case maghrebRai
        case khaleeji(Khaleeji)
        case levant(Levant)

        static var allCases: [Arabic] {
            var array: [Arabic] = [.arabic,
                                   .arabicPop,
                                   .islamic,
                                   .northAfrican,
                                   .maghrebRai]
            array.append(contentsOf: Khaleeji.allCases.map({Arabic.khaleeji($0)}))
            array.append(contentsOf: Levant.allCases.map({Arabic.levant($0)}))
            return array
        }

        public var identifier: Int {
            switch self {
                case .arabic: return 1197
                case .arabicPop: return 1286
                case .islamic: return 1287
                case .northAfrican: return 1285
                case .maghrebRai: return 100081
                case .khaleeji(let genre): return genre.rawValue
                case .levant(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .arabic: return "Arabic"
                case .arabicPop: return "Arabic Pop"
                case .islamic: return "Islamic"
                case .northAfrican: return "North African"
                case .maghrebRai: return "Maghreb Rai"
                case .khaleeji(let genre):
                    switch genre {
                        case .khaleeji: return genre.stringValue
                        default: return "\(Khaleeji.khaleeji.stringValue)|\(genre.stringValue)"
                    }
                case .levant(let genre):
                    switch genre {
                        case .levant: return genre.stringValue
                        default: return "\(Levant.levant.stringValue)|\(genre.stringValue)"
                    }
            }
        }

        public enum Khaleeji: Int, CaseIterable {
            case khaleeji = 1284
            case khaleejiJalsat = 100082
            case khaleejiShailat = 100083
            
            public var stringValue: String {
                switch self {
                    case .khaleeji: return "Khaleeji"
                    case .khaleejiJalsat: return "Khaleeji Jalsat"
                    case .khaleejiShailat: return "Khaleeji Shailat"
                }
            }
        }

        public enum Levant: Int, CaseIterable {
            case levant = 100079
            case dabke = 100080
            
            public var stringValue: String {
                switch self {
                    case .levant: return "Levant"
                    case .dabke: return "Dabke"
                }
            }
        }
    }

    public enum Chinese: Int, CaseIterable {
        case chinese = 1232
        case chineseClassical = 1233
        case chineseFlute = 1234
        case chineseOpera = 1235
        case chineseOrchestral = 1236
        case chineseRegionalFolk = 1237
        case chineseStrings = 1238
        case taiwaneseFolk = 1239
        case tibetanNativeMusic = 1240

        public var stringValue: String {
            switch self {
                case .chinese: return "Chinese"
                case .chineseClassical: return "Chinese Classical"
                case .chineseFlute: return "Chinese Flute"
                case .chineseOpera: return "Chinese Opera"
                case .chineseOrchestral: return "Chinese Orchestral"
                case .chineseRegionalFolk: return "Chinese Regional Folk"
                case .chineseStrings: return "Chinese Strings"
                case .taiwaneseFolk: return "Taiwanese Folk"
                case .tibetanNativeMusic: return "Tibetan Native Music"
            }
        }
    }
    
    public enum Korean: Int, CaseIterable {
        case korean = 1243
        case koreanClassical = 1244
        case koreanTradInstrumental = 1246
        case koreanTradSong = 1245
        case koreanTradTheater = 1247

        public var stringValue: String {
            switch self {
                case .korean: return "Korean"
                case .koreanClassical: return "Korean Classical"
                case .koreanTradInstrumental: return "Korean Trad Instrumental"
                case .koreanTradSong: return "Korean Trad Song"
                case .koreanTradTheater: return "Korean Trad Theater"
            }
        }
    }

    public enum Indian: CaseIterable {
        case indian
        case bollywood
        case devotionalAndSpiritual
        case ghazals
        case indianFolk
        case indianPop
        case sufi
        case regionalIndian(RegionalIndian)
        case indianClassical(IndianClassical)
        
        static var allCases: [Indian] {
            var array: [Indian] = [
                .indian,
                .bollywood,
                .devotionalAndSpiritual,
                .ghazals,
                .indianFolk,
                .indianPop,
                .sufi]
            array.append(contentsOf: IndianClassical.allCases.map({Indian.indianClassical($0)}))
            array.append(contentsOf: RegionalIndian.allCases.map({Indian.regionalIndian($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .indian: return 1262
                case .bollywood: return 1263
                case .devotionalAndSpiritual: return 1267
                case .ghazals: return 1278
                case .indianFolk: return 1279
                case .indianPop: return 1185
                case .sufi: return 1268
                case .regionalIndian(let genre): return genre.identifier
                case .indianClassical(let genre): return genre.rawValue
            }
        }
        
        public var stringValue: String {
            switch self {
                case .indian: return "Indian"
                case .bollywood: return "Bollywood"
                case .devotionalAndSpiritual: return "Devotional & Spiritual"
                case .ghazals: return "Ghazals"
                case .indianFolk: return "Indian Folk"
                case .indianPop: return "Indian Pop"
                case .sufi: return "Sufi"
                case .regionalIndian(let genre):
                    switch genre {
                        case .regionalIndian: return genre.stringValue
                        default: return "\(RegionalIndian.regionalIndian.stringValue)|\(genre.stringValue)"
                    }
                case .indianClassical(let genre):
                    switch genre {
                        case .indianClassical: return genre.stringValue
                        default: return "\(IndianClassical.indianClassical.stringValue)|\(genre.stringValue)"
                    }
            }
        }
        
        public enum RegionalIndian: CaseIterable {
            case regionalIndian
            case tamil
            case telugu
            case malayalam
            case kannada
            case marathi
            case gujarati
            case assamese
            case bhojpuri
            case haryanvi
            case odia
            case rajasthani
            case urdu
            case punjabi(Punjabi)
            case bengali(Bengali)

            static var allCases: [RegionalIndian] {
                var array: [RegionalIndian] = [
                    .regionalIndian,
                    .tamil,
                    .telugu,
                    .malayalam,
                    .kannada,
                    .marathi,
                    .gujarati,
                    .assamese,
                    .bhojpuri,
                    .haryanvi,
                    .odia,
                    .rajasthani,
                    .urdu]
                array.append(contentsOf: Punjabi.allCases.map({RegionalIndian.punjabi($0)}))
                array.append(contentsOf: Bengali.allCases.map({RegionalIndian.bengali($0)}))
                return array
            }

            public var identifier: Int {
                switch self {
                    case .regionalIndian: return 1266
                    case .tamil: return 1264
                    case .telugu: return 1265
                    case .malayalam: return 100035
                    case .kannada: return 100036
                    case .marathi: return 100037
                    case .gujarati: return 100038
                    case .assamese: return 100039
                    case .bhojpuri: return 100040
                    case .haryanvi: return 100041
                    case .odia: return 100042
                    case .rajasthani: return 100043
                    case .urdu: return 100044
                    case .punjabi(let genre): return genre.rawValue
                    case .bengali(let genre): return genre.rawValue
                }
            }
            
            public var stringValue: String {
                switch self {
                    case .regionalIndian: return "Regional Indian"
                    case .tamil: return "Tamil"
                    case .telugu: return "Telugu"
                    case .malayalam: return "Malayalam"
                    case .kannada: return "Kannada"
                    case .marathi: return "Marathi"
                    case .gujarati: return "Gujarati"
                    case .assamese: return "Assamese"
                    case .bhojpuri: return "Bhojpuri"
                    case .haryanvi: return "Haryanvi"
                    case .odia: return "Odia"
                    case .rajasthani: return "Rajasthani"
                    case .urdu: return "Urdu"
                    case .punjabi(let genre):
                        switch genre {
                            case .punjabi: return genre.stringValue
                            case .punjabiPop: return "\(Punjabi.punjabi.stringValue)|\(genre.stringValue)"
                        }
                    case .bengali(let genre):
                        switch genre {
                            case .bengali: return genre.stringValue
                            case .rabindraSangeet: return "\(Bengali.bengali.stringValue)|\(genre.stringValue)"
                        }
                }
            }

            public enum Punjabi: Int, CaseIterable {
                case punjabi = 100045
                case punjabiPop = 100033
                
                public var stringValue: String {
                    switch self {
                        case .punjabi: return "Punjabi"
                        case .punjabiPop: return "Punjabi Pop"
                    }
                }
            }

            public enum Bengali: Int, CaseIterable {
                case bengali = 100046
                case rabindraSangeet = 100034
                
                public var stringValue: String {
                    switch self {
                        case .bengali: return "Bengali"
                        case .rabindraSangeet: return "Rabindra Sangeet"
                    }
                }
            }
        }

        public enum IndianClassical: Int, CaseIterable {
            case indianClassical = 1269
            case carnaticClassical = 100047
            case hindustaniClassical = 100048
            
            public var stringValue: String {
                switch self {
                    case .indianClassical: return "Indian Classical"
                    case .carnaticClassical: return "Carnatic Classical"
                    case .hindustaniClassical: return "Hindustani Classical"
                }
            }
        }
    }

    public enum Russian: Int, CaseIterable {
        case russian = 1299
        case russianChanson = 1270
        case russianRomance = 100074
        case russianBard = 100075
        case russianPop = 100076
        case russianRock = 100077
        case russianHipHop = 100078
        
        public var stringValue: String {
            switch self {
                case .russian: return "Russian"
                case .russianChanson: return "Russian Chanson"
                case .russianRomance: return "Russian Romance"
                case .russianBard: return "Russian Bard"
                case .russianPop: return "Russian Pop"
                case .russianRock: return "Russian Rock"
                case .russianHipHop: return "Russian Hip-Hop"
            }
        }
    }

    public enum Turkish: Int, CaseIterable {
        case turkish = 1300
        case arabesque = 1280
        case halk = 1272
        case sanat = 1273
        case ozgun = 100066
        case fantezi = 100067
        case religious = 100068

        public var stringValue: String {
            switch self {
                case .turkish: return "Turkish"
                case .arabesque: return "Arabesque"
                case .halk: return "Halk"
                case .sanat: return "Sanat"
                case .ozgun: return "Ozgun"
                case .fantezi: return "Fantezi"
                case .religious: return "Religious"
            }
        }
    }

    public enum Folk: Int, CaseIterable {
        case folk = 1289
        case iraqiFolk = 100103
        case khaleejiFolk = 100104

        public var stringValue: String {
            switch self {
                case .folk: return "Folk"
                case .iraqiFolk: return "Iraqi Folk"
                case .khaleejiFolk: return "Khaleeji Folk"
            }
        }
    }

    public enum Cuban: Int, CaseIterable {
        case cuban = 100024
        case mambo = 100025
        case chachacha = 100026
        case guajira = 100027
        case son = 100028
        case bolero = 100029
        case guaracha = 100030
        case timba = 100031
        
        public var stringValue: String {
            switch self {
                case .cuban: return "Cuban"
                case .mambo: return "Mambo"
                case .chachacha: return "Chachacha"
                case .guajira: return "Guajira"
                case .son: return "Son"
                case .bolero: return "Bolero"
                case .guaracha: return "Guaracha"
                case .timba: return "Timba"
            }
        }
    }
    
    public enum Tarab: Int, CaseIterable {
        case tarab = 100084
        case iraqiTarab = 100085
        case egyptianTarab = 100086
        case khaleejiTarab = 100087
        
        public var stringValue: String {
            switch self {
                case .tarab: return "Tarab"
                case .iraqiTarab: return "Iraqi Tarab"
                case .egyptianTarab: return "Egyptian Tarab"
                case .khaleejiTarab: return "Khaleeji Tarab"
            }
        }
    }
}
