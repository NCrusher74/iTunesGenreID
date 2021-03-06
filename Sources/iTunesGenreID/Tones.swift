//
//  Tones.swift
//  
//
//  Created by Nolaine Crusher on 10/18/20.
//

import Foundation
public enum Tones: CaseIterable {
    case tones
    case alertTones(AlertTones)
    case ringtones(Ringtones)
    
    public static var allCases: [Tones] {
        var array: [Tones] = [.tones]
        array.append(contentsOf: AlertTones.allCases.map({Tones.alertTones($0)}))
        array.append(contentsOf: Ringtones.allCases.map({Tones.ringtones($0)}))
        return array
    }
    public var identifier: Int {
        switch self {
            case .tones: return 37
            case .alertTones(let genre): return genre.rawValue
            case .ringtones(let genre): return genre.identifier
        }
    }
    
    public var stringValue: String {
        switch self {
            case .tones: return "Tones"
            case .alertTones(let genre): return genre.stringValue
            case .ringtones(let genre):
                switch genre {
                    case .ringtones: return genre.stringValue
                    default: return "\(Ringtones.ringtones.stringValue)|\(genre.stringValue)"
                }
        }
    }
    
    public enum AlertTones: Int, CaseIterable {
        case alertTones = 8054
        case soundEffects = 8050
        case dialogue = 8051
        case music = 8052

        public var stringValue: String {
            switch self {
                case .alertTones: return "Alert Tones"
                case .soundEffects: return "Sound Effects"
                case .dialogue: return "Dialogue"
                case .music: return "Music"
            }
        }
    }
    
    public enum Ringtones: CaseIterable {
        case ringtones
        case enka
        case frenchPop
        case germanFolk
        case germanPop
        case inspirational
        case jPop
        case kayokyoku
        case spokenWord
        case anime
        case disney
        case fitnessAndWorkout
        case instrumental
        case karaoke
        case marchingBands
        case orchestral
        case alternative(Alternative)
        case blues(Blues)
        case childrensMusic(ChildrensMusic)
        case classical(Classical)
        case comedy(Comedy)
        case country(Country)
        case dance(Dance)
        case electronic(Electronic)
        case hipHopAndRap(HipHopAndRap)
        case holiday(Holiday)
        case jazz(Jazz)
        case latin(Latin)
        case newAge(NewAge)
        case pop(Pop)
        case rAndBSoul(RandBSoul)
        case reggae(Reggae)
        case rock(Rock)
        case singerSongwriter(SingerSongwriter)
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
        
        public static var allCases: [Ringtones] {
            var array: [Ringtones] = [
                .ringtones,
                .enka,
                .frenchPop,
                .germanFolk,
                .germanPop,
                .inspirational,
                .jPop,
                .kayokyoku,
                .spokenWord,
                .anime,
                .disney,
                .fitnessAndWorkout,
                .instrumental,
                .karaoke,
                .marchingBands,
                .orchestral]
            array.append(contentsOf: Alternative.allCases.map({Ringtones.alternative($0)}))
            array.append(contentsOf: Blues.allCases.map({Ringtones.blues($0)}))
            array.append(contentsOf: ChildrensMusic.allCases.map({Ringtones.childrensMusic($0)}))
            array.append(contentsOf: Classical.allCases.map({Ringtones.classical($0)}))
            array.append(contentsOf: Comedy.allCases.map({Ringtones.comedy($0)}))
            array.append(contentsOf: Country.allCases.map({Ringtones.country($0)}))
            array.append(contentsOf: Dance.allCases.map({Ringtones.dance($0)}))
            array.append(contentsOf: Electronic.allCases.map({Ringtones.electronic($0)}))
            array.append(contentsOf: HipHopAndRap.allCases.map({Ringtones.hipHopAndRap($0)}))
            array.append(contentsOf: Holiday.allCases.map({Ringtones.holiday($0)}))
            array.append(contentsOf: Jazz.allCases.map({Ringtones.jazz($0)}))
            array.append(contentsOf: Latin.allCases.map({Ringtones.latin($0)}))
            array.append(contentsOf: NewAge.allCases.map({Ringtones.newAge($0)}))
            array.append(contentsOf: Pop.allCases.map({Ringtones.pop($0)}))
            array.append(contentsOf: RandBSoul.allCases.map({Ringtones.rAndBSoul($0)}))
            array.append(contentsOf: Reggae.allCases.map({Ringtones.reggae($0)}))
            array.append(contentsOf: Rock.allCases.map({Ringtones.rock($0)}))
            array.append(contentsOf: SingerSongwriter.allCases.map({Ringtones.singerSongwriter($0)}))
            array.append(contentsOf: Soundtrack.allCases.map({Ringtones.soundtrack($0)}))
            array.append(contentsOf: Vocal.allCases.map({Ringtones.vocal($0)}))
            array.append(contentsOf: World.allCases.map({Ringtones.world($0)}))
            array.append(contentsOf: Arabic.allCases.map({Ringtones.arabic($0)}))
            array.append(contentsOf: Brazilian.allCases.map({Ringtones.brazilian($0)}))
            array.append(contentsOf: Chinese.allCases.map({Ringtones.chinese($0)}))
            array.append(contentsOf: ChristianAndGospel.allCases.map({Ringtones.christianAndGospel($0)}))
            array.append(contentsOf: EasyListening.allCases.map({Ringtones.easyListening($0)}))
            array.append(contentsOf: Folk.allCases.map({Ringtones.folk($0)}))
            array.append(contentsOf: Indian.allCases.map({Ringtones.indian($0)}))
            array.append(contentsOf: Korean.allCases.map({Ringtones.korean($0)}))
            array.append(contentsOf: African.allCases.map({Ringtones.african($0)}))
            array.append(contentsOf: Turkish.allCases.map({Ringtones.turkish($0)}))
            array.append(contentsOf: Russian.allCases.map({Ringtones.russian($0)}))
            array.append(contentsOf: Cuban.allCases.map({Ringtones.cuban($0)}))
            array.append(contentsOf: Tarab.allCases.map({Ringtones.tarab($0)}))
            return array
        }
        
        public var identifier: Int {
            switch self {
                case .ringtones: return 8053
                case .enka: return 8009
                case .frenchPop: return 8010
                case .germanFolk: return 8011
                case .germanPop: return 8012
                case .inspirational: return 8015
                case .jPop: return 8016
                case .kayokyoku: return 8018
                case .spokenWord: return 8028
                case .anime: return 8063
                case .disney: return 8149
                case .fitnessAndWorkout: return 8158
                case .instrumental: return 8198
                case .karaoke: return 8215
                case .marchingBands: return 8230
                case .orchestral: return 8236
                case .alternative(let genre): return genre.rawValue
                case .blues(let genre): return genre.rawValue
                case .childrensMusic(let genre): return genre.rawValue
                case .classical(let genre): return genre.rawValue
                case .comedy(let genre): return genre.rawValue
                case .country(let genre): return genre.rawValue
                case .dance(let genre): return genre.rawValue
                case .electronic(let genre): return genre.rawValue
                case .hipHopAndRap(let genre): return genre.rawValue
                case .holiday(let genre): return genre.identifier
                case .jazz(let genre): return genre.rawValue
                case .latin(let genre): return genre.rawValue
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
                case .ringtones: return "Ringtones"
                case .enka: return "Enka"
                case .frenchPop: return "French Pop"
                case .germanFolk: return "German Folk"
                case .germanPop: return "German Pop"
                case .inspirational: return "Inspirational"
                case .jPop: return "J-Pop"
                case .kayokyoku: return "Kayokyoku"
                case .spokenWord: return "Spoken Word"
                case .anime: return "Anime"
                case .disney: return "Disney"
                case .fitnessAndWorkout: return "Fitness & Workout"
                case .instrumental: return "Instrumental"
                case .karaoke: return "Karaoke"
                case .marchingBands: return "Marching Bands"
                case .orchestral: return "Orchestral"
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
                case .childrensMusic(let genre):
                    switch genre {
                        case .childrensMusic: return genre.stringValue
                        default: return "\(ChildrensMusic.childrensMusic.stringValue)|\(genre.stringValue)"
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
                case .latin(let genre):
                    switch genre {
                        case .latin: return genre.stringValue
                        default: return "\(Latin.latin.stringValue)|\(genre.stringValue)"
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
        
        public enum Alternative: Int, CaseIterable {
            case alternative = 8001
            case chineseAlt = 8055
            case collegeRock = 8056
            case gothRock = 8057
            case grunge = 8058
            case indieRock = 8059
            case koreanIndie = 8060
            case newWave = 8061
            case punk = 8062
            case emo = 8362
            case popPunk = 8363
            case indiePop = 8364
            case turkishAlternative = 8415
            case indieLevant = 8441
            case indieEgyptian = 8442
            case indieMaghreb = 8443

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
        
        public enum Blues: Int, CaseIterable {
            case blues = 8002
            case acousticBlues = 8069
            case chicagoBlues = 8070
            case classicBlues = 8071
            case contemporaryBlues = 8072
            case countryBlues = 8073
            case deltaBlues = 8074
            case electricBlues = 8075

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
        
        public enum ChildrensMusic: Int, CaseIterable {
            case childrensMusic = 8003
            case lullabies = 8087
            case singAlong = 8088
            case stories = 8089

            public var stringValue: String {
                switch self {
                    case .childrensMusic: return "Children's Music"
                    case .lullabies: return "Lullabies"
                    case .singAlong: return "Sing-Along"
                    case .stories: return "Stories"
                }
            }
        }
        
        public enum Classical: Int, CaseIterable {
            case classical = 8004
            case opera = 8021
            case avantGarde = 8111
            case baroqueEra = 8112
            case chamberMusic = 8113
            case chant = 8114
            case choral = 8115
            case classicalCrossover = 8116
            case earlyMusic = 8117
            case highClassical = 8118
            case impressionist = 8119
            case medievalEra = 8120
            case minimalism = 8121
            case modernEra = 8122
            case orchestral = 8123
            case renaissance = 8124
            case romanticEra = 8125
            case weddingMusic = 8126
            case artSong = 8345
            case brassAndWoodwinds = 8346
            case soloInstrumental = 8347
            case contemporaryEra = 8348
            case oratorio = 8349
            case cantata = 8350
            case electronic = 8351
            case sacred = 8352
            case guitar = 8353
            case piano = 8354
            case violin = 8355
            case cello = 8356
            case percussion = 8357

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
        
        public enum Comedy: Int, CaseIterable {
            case comedy = 8005
            case novelty = 8127
            case standupComedy = 8128

            public var stringValue: String {
                switch self {
                    case .comedy: return "Comedy"
                    case .novelty: return "Novelty"
                    case .standupComedy: return "Standup Comedy"
                }
            }
        }
        
        public enum Country: Int, CaseIterable {
            case country = 8006
            case alternativeCountry = 8129
            case americana = 8130
            case bluegrass = 8131
            case contemporaryBluegrass = 8132
            case contemporaryCountry = 8133
            case countryGospel = 8134
            case honkyTonk = 8135
            case outlawCountry = 8136
            case thaiCountry = 8137
            case traditionalBluegrass = 8138
            case traditionalCountry = 8139
            case urbanCowboy = 8140

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
        
        public enum Dance: Int, CaseIterable {
            case dance = 8007
            case breakbeat = 8141
            case exercise = 8142
            case garage = 8143
            case hardcore = 8144
            case house = 8145
            case jungleDrumAndBass = 8146
            case techno = 8147
            case trance = 8148
            case maghrebDance = 8449

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
        
        public enum Electronic: Int, CaseIterable {
            case electronic = 8008
            case ambient = 8153
            case downtempo = 8154
            case electronica = 8155
            case idmExperimental = 8156
            case industrial = 8157
            case dubstep = 8358
            case bass = 8359
            case levantElectronic = 8444
            case electroChaabi = 8445
            case maghrebElectronic = 8446

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
        
        public enum HipHopAndRap: Int, CaseIterable {
            case hipHopAndRap = 8013
            case alternativeRap = 8160
            case chineseHipHop = 8161
            case dirtySouth = 8162
            case eastCoastRap = 8163
            case gangstaRap = 8164
            case hardcoreRap = 8165
            case hipHop = 8166
            case koreanHipHop = 8167
            case latinRap = 8168
            case oldSchoolRap = 8169
            case rap = 8170
            case undergroundRap = 8171
            case westCoastRap = 8172
            case ukHipHop = 8360
            case turkishHipHopAndRap = 8416
            case levantHipHop = 8437
            case egyptianHipHop = 8438
            case maghrebHipHop = 8439
            case khaleejiHipHop = 8440

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
        
        public enum Holiday: CaseIterable {
            case holiday
            case chanukah
            case easter
            case halloween
            case thanksgiving
            case christmas(Christmas)
            
            public static var allCases: [Holiday] {
                var array: [Holiday] = [.holiday,
                                        .chanukah,
                                        .easter,
                                        .halloween,
                                        .thanksgiving]
                array.append(contentsOf: Christmas.allCases.map({Holiday.christmas($0)}))
                return array
            }
            
            public var identifier: Int {
                switch self {
                    case .holiday: return 8014
                    case .chanukah: return 8173
                    case .easter: return 8184
                    case .halloween: return 8185
                    case .thanksgiving: return 8186
                    case .christmas(let genre): return genre.rawValue
                }
            }
            
            public var stringValue: String {
                switch self {
                    case .holiday: return "Holiday"
                    case .chanukah: return "Chanukah"
                    case .easter: return "Easter"
                    case .halloween: return "Halloween"
                    case .thanksgiving: return "Thanksgiving"
                    case .christmas(let genre):
                        switch genre {
                            case .christmas: return "Christmas"
                            default: return "Christmas: \(genre.stringValue)"
                        }
                }
            }
            
            public enum Christmas: Int, CaseIterable {
                case christmas = 8174
                case childrens = 8175
                case classic = 8176
                case classical = 8177
                case jazz = 8178
                case modern = 8179
                case pop = 8180
                case rAndB = 8181
                case religious = 8182
                case rock = 8183

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
        
        public enum Jazz: Int, CaseIterable {
            case jazz = 8017
            case avantGardeJazz = 8199
            case bigBand = 8201
            case bop = 8202
            case contemporaryJazz = 8203
            case coolJazz = 8204
            case crossoverJazz = 8205
            case dixieland = 8206
            case fusion = 8207
            case hardBop = 8208
            case latinJazz = 8209
            case mainstreamJazz = 8210
            case ragtime = 8211
            case smoothJazz = 8212
            case tradJazz = 8213
            case vocalJazz = 8302

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
        
        public enum Latin: Int, CaseIterable {
            case latin = 8019
            case alternativeAndRockinSpanish = 8221
            case baladasyBoleros = 8222
            case contemporaryLatin = 8223
            case latinJazz = 8224
            case latinUrban = 8225
            case popinSpanish = 8226
            case raices = 8227
            case musicaMexicana = 8228
            case salsayTropical = 8229

            public var stringValue: String {
                switch self {
                    case .latin: return "Latin"
                    case .alternativeAndRockinSpanish: return "Alternative & Rock in Spanish"
                    case .baladasyBoleros: return "Baladas y Boleros"
                    case .contemporaryLatin: return "Contemporary Latin"
                    case .latinJazz: return "Latin Jazz"
                    case .latinUrban: return "Latin Urban"
                    case .popinSpanish: return "Pop in Spanish"
                    case .raices: return "Raices"
                    case .musicaMexicana: return "Musica Mexicana"
                    case .salsayTropical: return "Salsa y Tropical"
                }
            }
        }
        
        public enum NewAge: Int, CaseIterable {
            case newAge = 8020
            case healing = 8231
            case meditation = 8232
            case nature = 8233
            case relaxation = 8234
            case travel = 8235
            case yoga = 8365

            public var stringValue: String {
                switch self {
                    case .newAge: return "New Age"
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
            case pop = 8022
            case kPop = 8214
            case adultContemporary = 8237
            case britpop = 8238
            case cPop = 8239
            case cantopopHKPop = 8240
            case indoPop = 8241
            case koreanFolkPop = 8242
            case malaysianPop = 8243
            case mandopop = 8244
            case manillaSound = 8245
            case oldies = 8246
            case originalPilipinoMusic = 8247
            case pinoyPop = 8248
            case popRock = 8249
            case softRock = 8250
            case taiPop = 8251
            case teenPop = 8252
            case thaiPop = 8253
            case tribute = 8366
            case shows = 8367
            case turkishPop = 8413
            case levantPop = 8432
            case iraqiPop = 8433
            case egyptianPop = 8434
            case maghrebPop = 8435
            case khaleejiPop = 8436

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
            case rAndBSoul = 8023
            case contemporaryRandB = 8254
            case disco = 8255
            case dooWop = 8256
            case funk = 8257
            case motown = 8258
            case neoSoul = 8259
            case soul = 8260

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
                }
            }
        }
        
        public enum Reggae: Int, CaseIterable {
            case reggae = 8024
            case modernDancehall = 8261
            case dub = 8262
            case rootsReggae = 8263
            case ska = 8264
            case loversRock = 8361

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
        
        public enum Rock: Int, CaseIterable {
            case rock = 8025
            case adultAlternative = 8265
            case americanTradRock = 8266
            case arenaRock = 8267
            case bluesRock = 8268
            case britishInvasion = 8269
            case chineseRock = 8270
            case deathMetalBlackMetal = 8271
            case glamRock = 8272
            case hairMetal = 8273
            case hardRock = 8274
            case metal = 8275
            case jamBands = 8276
            case koreanRock = 8277
            case progRockArtRock = 8278
            case psychedelic = 8279
            case rockAndRoll = 8280
            case rockabilly = 8281
            case rootsRock = 8282
            case singerSongwriter = 8283
            case southernRock = 8284
            case surf = 8285
            case texMex = 8286
            case turkishRock = 8414

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
        
        public enum SingerSongwriter: Int, CaseIterable {
            case singerSongwriter = 8026
            case alternativeFolk = 8287
            case contemporaryFolk = 8288
            case contemporarySingerSongwriter = 8289
            case folkRock = 8290
            case newAcoustic = 8291
            case traditionalFolk = 8292

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
        
        public enum Soundtrack: Int, CaseIterable {
            case soundtrack = 8027
            case foreignCinema = 8293
            case musicals = 8294
            case originalScore = 8295
            case soundEffects = 8296
            case tvSoundtrack = 8298
            case videoGame = 8376

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
        
        public enum Vocal: Int, CaseIterable {
            case vocal = 8029
            case standards = 8299
            case traditionalPop = 8300
            case trot = 8301
            case vocalPop = 8303

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
        
        public enum World: Int, CaseIterable {
            case world = 8030
            case asia = 8309
            case australia = 8310
            case cajun = 8311
            case calypso = 8312
            case caribbean = 8313
            case celtic = 8314
            case celticFolk = 8315
            case contemporaryCeltic = 8316
            case dangdut = 8317
            case dini = 8318
            case europe = 8319
            case fado = 8320
            case farsi = 8321
            case flamenco = 8322
            case france = 8323
            case hawaii = 8325
            case iberia = 8326
            case indonesianReligious = 8327
            case israeli = 8328
            case japan = 8329
            case klezmer = 8330
            case northAmerica = 8331
            case polka = 8332
            case soca = 8336
            case southAfrica = 8337
            case southAmerica = 8338
            case tango = 8339
            case traditionalCeltic = 8340
            case worldbeat = 8342
            case zydeco = 8343

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
            
            public static var allCases: [Arabic] {
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
                    case .arabic: return 8064
                    case .arabicPop: return 8065
                    case .islamic: return 8066
                    case .northAfrican: return 8068
                    case .maghrebRai: return 8425
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
                case khaleeji = 8067
                case khaleejiJalsat = 8426
                case khaleejiShailat = 8427

                public var stringValue: String {
                    switch self {
                        case .khaleeji: return "Khaleeji"
                        case .khaleejiJalsat: return "Khaleeji Jalsat"
                        case .khaleejiShailat: return "Khaleeji Shailat"
                    }
                }
            }
            
            public enum Levant: Int, CaseIterable {
                case levant = 8423
                case dabke = 8424

                public var stringValue: String {
                    switch self {
                        case .levant: return "Levant"
                        case .dabke: return "Dabke"
                    }
                }
            }
        }
        
        public enum Brazilian: Int, CaseIterable {
            case brazilian = 8076
            case axe = 8077
            case baileFunk = 8078
            case bossaNova = 8079
            case choro = 8080
            case forro = 8081
            case frevo = 8082
            case mpb = 8083
            case pagode = 8084
            case samba = 8085
            case sertanejo = 8086

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
        
        public enum Chinese: Int, CaseIterable {
            case chinese = 8090
            case chineseClassical = 8091
            case chineseFlute = 8092
            case chineseOpera = 8093
            case chineseOrchestral = 8094
            case chineseRegionalFolk = 8095
            case chineseStrings = 8096
            case taiwaneseFolk = 8097
            case tibetanNativeMusic = 8098

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
        
        public enum ChristianAndGospel: Int, CaseIterable {
            case christianAndGospel = 8099
            case ccm = 8100
            case christianMetal = 8101
            case christianPop = 8102
            case christianRap = 8103
            case christianRock = 8104
            case classicChristian = 8105
            case contemporaryGospel = 8106
            case gospel = 8107
            case praiseAndWorship = 8108
            case southernGospel = 8109
            case traditionalGospel = 8110

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
        
        public enum EasyListening: Int, CaseIterable {
            case easyListening = 8150
            case lounge = 8151
            case swing = 8152

            public var stringValue: String {
                switch self {
                    case .easyListening: return "Easy Listening"
                    case .lounge: return "Lounge"
                    case .swing: return "Swing"
                }
            }
        }
        
        public enum Folk: Int, CaseIterable {
            case folk = 8159
            case iraqiFolk = 8447
            case khaleejiFolk = 8448

            public var stringValue: String {
                switch self {
                    case .folk: return "Folk"
                    case .iraqiFolk: return "Iraqi Folk"
                    case .khaleejiFolk: return "Khaleeji Folk"
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
            case regionalIndian
            case regionalTamil
            case regionalTelugu
            case regionalMalayalam
            case regionalKannada
            case regionalMarathi
            case regionalGujarati
            case regionalAssamese
            case regionalBhojpuri
            case regionalHaryanvi
            case regionalOdia
            case regionalRajasthani
            case regionalUrdu
            case regionalPunjabi(RegionalPunjabi)
            case regionalBengali(RegionalBengali)
            case indianClassical(IndianClassical)
            
            public static var allCases: [Indian] {
                var array: [Indian] = [
                    .indian,
                    .bollywood,
                    .devotionalAndSpiritual,
                    .ghazals,
                    .indianFolk,
                    .indianPop,
                    .sufi,
                    .regionalIndian,
                    .regionalTamil,
                    .regionalTelugu,
                    .regionalMalayalam,
                    .regionalKannada,
                    .regionalMarathi,
                    .regionalGujarati,
                    .regionalAssamese,
                    .regionalBhojpuri,
                    .regionalHaryanvi,
                    .regionalOdia,
                    .regionalRajasthani,
                    .regionalUrdu
                ]
                array.append(contentsOf: RegionalPunjabi.allCases.map({Indian.regionalPunjabi($0)}))
                array.append(contentsOf: RegionalBengali.allCases.map({Indian.regionalBengali($0)}))
                array.append(contentsOf: IndianClassical.allCases.map({Indian.indianClassical($0)}))
                return array
            }
            
            public var identifier: Int {
                switch self {
                    case .indian: return 8187
                    case .bollywood: return 8188
                    case .devotionalAndSpiritual: return 8189
                    case .ghazals: return 8190
                    case .indianFolk: return 8192
                    case .indianPop: return 8193
                    case .sufi: return 8195
                    case .regionalIndian: return 8194
                    case .regionalTamil: return 8196
                    case .regionalTelugu: return 8197
                    case .regionalMalayalam: return 8379
                    case .regionalKannada: return 8380
                    case .regionalMarathi: return 8381
                    case .regionalGujarati: return 8382
                    case .regionalAssamese: return 8383
                    case .regionalBhojpuri: return 8384
                    case .regionalHaryanvi: return 8385
                    case .regionalOdia: return 8386
                    case .regionalRajasthani: return 8387
                    case .regionalUrdu: return 8388
                    case .regionalPunjabi(let genre): return genre.rawValue
                    case .regionalBengali(let genre): return genre.rawValue
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
                    case .regionalIndian: return "Regional Indian"
                    case .regionalTamil: return "Regional Tamil"
                    case .regionalTelugu: return "Regional Telugu"
                    case .regionalMalayalam: return "Regional Malayalam"
                    case .regionalKannada: return "Regional Kannada"
                    case .regionalMarathi: return "Regional Marathi"
                    case .regionalGujarati: return "Regional Gujarati"
                    case .regionalAssamese: return "Regional Assamese"
                    case .regionalBhojpuri: return "Regional Bhojpuri"
                    case .regionalHaryanvi: return "Regional Haryanvi"
                    case .regionalOdia: return "Regional Odia"
                    case .regionalRajasthani: return "Regional Rajasthani"
                    case .regionalUrdu: return "Regional Urdu"
                    case .regionalPunjabi(let genre):
                        switch genre {
                            case .regionalPunjabi: return genre.stringValue
                            case .punjabiPop: return "\(RegionalPunjabi.regionalPunjabi.stringValue)|\(genre.stringValue)"
                        }
                    case .regionalBengali(let genre):
                        switch genre {
                            case .regionalBengali: return genre.stringValue
                            case .rabindraSangeet: return "\(RegionalBengali.regionalBengali.stringValue)|\(genre.stringValue)"
                        }
                    case .indianClassical(let genre):
                        switch genre {
                            case .indianClassical: return genre.stringValue
                            default: return "\(IndianClassical.indianClassical.stringValue)|\(genre.stringValue)"
                        }
                }
            }
            
            public enum RegionalPunjabi: Int, CaseIterable {
                case regionalPunjabi = 8389
                case punjabiPop = 8377

                public var stringValue: String {
                    switch self {
                        case .regionalPunjabi: return "Regional Punjabi"
                        case .punjabiPop: return "Punjabi Pop"
                    }
                }
            }
            
            public enum RegionalBengali: Int, CaseIterable {
                case regionalBengali = 8390
                case rabindraSangeet = 8378

                public var stringValue: String {
                    switch self {
                        case .regionalBengali: return "Regional Bengali"
                        case .rabindraSangeet: return "Rabindra Sangeet"
                    }
                }
            }
            
            public enum IndianClassical: Int, CaseIterable {
                case indianClassical = 8191
                case carnaticClassical = 8391
                case hindustaniClassical = 8392

                public var stringValue: String {
                    switch self {
                        case .indianClassical: return "Indian Classical"
                        case .carnaticClassical: return "Carnatic Classical"
                        case .hindustaniClassical: return "Hindustani Classical"
                    }
                }
            }
        }
        
        public enum Korean: Int, CaseIterable {
            case korean = 8216
            case koreanClassical = 8217
            case koreanTradInstrumental = 8218
            case koreanTradSong = 8219
            case koreanTradTheater = 8220

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
        
        public enum African: Int, CaseIterable {
            case african = 8304
            case afrikaans = 8305
            case afroBeat = 8306
            case afroPop = 8307
            case afroHouse = 8393
            case afroSoul = 8394
            case afrobeats = 8395
            case benga = 8396
            case bongoFlava = 8397
            case coupeDecale = 8398
            case gqom = 8399
            case highlife = 8400
            case kuduro = 8401
            case kizomba = 8402
            case kwaito = 8403
            case mbalax = 8404
            case ndombolo = 8405
            case shangaanElectro = 8406
            case soukous = 8407
            case taarab = 8408
            case zouglou = 8409
            case maskandi = 8417

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
        
        public enum Turkish: Int, CaseIterable {
            case turkish = 8341
            case arabesque = 8308
            case halk = 8324
            case sanat = 8335
            case ozgun = 8410
            case fantezi = 8411
            case religious = 8412

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
        
        public enum Russian: Int, CaseIterable {
            case russian = 8333
            case russianChanson = 8334
            case russianRomance = 8418
            case russianBard = 8419
            case russianPop = 8420
            case russianRock = 8421
            case russianHipHop = 8422

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
        
        public enum Cuban: Int, CaseIterable {
            case cuban = 8368
            case mambo = 8369
            case chachacha = 8370
            case guajira = 8371
            case son = 8372
            case bolero = 8373
            case guaracha = 8374
            case timba = 8375

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
            case tarab = 8428
            case iraqiTarab = 8429
            case egyptianTarab = 8430
            case khaleejiTarab = 8431

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
}
