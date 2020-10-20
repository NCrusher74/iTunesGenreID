//
//  MusicVideos.swift
//  
//
//  Created by Nolaine Crusher on 10/20/20.
//

import Foundation
enum MusicVideos: CaseIterable {
    case musicVideos
    case podcasts
    case enka
    case frenchPop
    case germanFolk
    case germanPop
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
    
    static var allCases: [MusicVideos] {
        var array: [MusicVideos] = [
            .musicVideos,
            .enka,
            .frenchPop,
            .germanFolk,
            .germanPop,
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
        array.append(contentsOf: Alternative.allCases.map({MusicVideos.alternative($0)}))
        array.append(contentsOf: Blues.allCases.map({MusicVideos.blues($0)}))
        array.append(contentsOf: ChildrensMusic.allCases.map({MusicVideos.childrensMusic($0)}))
        array.append(contentsOf: Classical.allCases.map({MusicVideos.classical($0)}))
        array.append(contentsOf: Comedy.allCases.map({MusicVideos.comedy($0)}))
        array.append(contentsOf: Country.allCases.map({MusicVideos.country($0)}))
        array.append(contentsOf: Dance.allCases.map({MusicVideos.dance($0)}))
        array.append(contentsOf: Electronic.allCases.map({MusicVideos.electronic($0)}))
        array.append(contentsOf: HipHopAndRap.allCases.map({MusicVideos.hipHopAndRap($0)}))
        array.append(contentsOf: Holiday.allCases.map({MusicVideos.holiday($0)}))
        array.append(contentsOf: Jazz.allCases.map({MusicVideos.jazz($0)}))
        array.append(contentsOf: Latin.allCases.map({MusicVideos.latin($0)}))
        array.append(contentsOf: NewAge.allCases.map({MusicVideos.newAge($0)}))
        array.append(contentsOf: Pop.allCases.map({MusicVideos.pop($0)}))
        array.append(contentsOf: RandBSoul.allCases.map({MusicVideos.rAndBSoul($0)}))
        array.append(contentsOf: Reggae.allCases.map({MusicVideos.reggae($0)}))
        array.append(contentsOf: Rock.allCases.map({MusicVideos.rock($0)}))
        array.append(contentsOf: SingerSongwriter.allCases.map({MusicVideos.singerSongwriter($0)}))
        array.append(contentsOf: Soundtrack.allCases.map({MusicVideos.soundtrack($0)}))
        array.append(contentsOf: Vocal.allCases.map({MusicVideos.vocal($0)}))
        array.append(contentsOf: World.allCases.map({MusicVideos.world($0)}))
        array.append(contentsOf: Arabic.allCases.map({MusicVideos.arabic($0)}))
        array.append(contentsOf: Brazilian.allCases.map({MusicVideos.brazilian($0)}))
        array.append(contentsOf: Chinese.allCases.map({MusicVideos.chinese($0)}))
        array.append(contentsOf: ChristianAndGospel.allCases.map({MusicVideos.christianAndGospel($0)}))
        array.append(contentsOf: EasyListening.allCases.map({MusicVideos.easyListening($0)}))
        array.append(contentsOf: Folk.allCases.map({MusicVideos.folk($0)}))
        array.append(contentsOf: Indian.allCases.map({MusicVideos.indian($0)}))
        array.append(contentsOf: Korean.allCases.map({MusicVideos.korean($0)}))
        array.append(contentsOf: African.allCases.map({MusicVideos.african($0)}))
        array.append(contentsOf: Turkish.allCases.map({MusicVideos.turkish($0)}))
        array.append(contentsOf: Russian.allCases.map({MusicVideos.russian($0)}))
        array.append(contentsOf: Cuban.allCases.map({MusicVideos.cuban($0)}))
        array.append(contentsOf: Tarab.allCases.map({MusicVideos.tarab($0)}))
        return array
    }

    var identifier: Int {
        switch self {
            case .musicVideos: return 31
            case .podcasts: return 1626
            case .enka: return 1626
            case .frenchPop: return 1632
            case .germanFolk: return 1634
            case .germanPop: return 1633
            case .jPop: return 1627
            case .kayokyoku: return 1630
            case .spokenWord: return 1689
            case .anime: return 1629
            case .disney: return 1631
            case .fitnessAndWorkout: return 1683
            case .instrumental: return 1684
            case .karaoke: return 1687
            case .marchingBands: return 1721
            case .orchestral: return 1720
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
    
    var stringValue: String {
        switch self {
            case .musicVideos: return "MusicVideos"
            case .podcasts: return "Podcasts"
            case .enka: return "Enka"
            case .frenchPop: return "French Pop"
            case .germanFolk: return "German Folk"
            case .germanPop: return "German Pop"
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

    enum Alternative: Int, CaseIterable {
        case alternative = 1620
        case chineseAlt = 1635
        case collegeRock = 1731
        case gothRock = 1732
        case grunge = 1733
        case indieRock = 1734
        case koreanIndie = 1636
        case newWave = 1735
        case punk = 1736
        case emo = 1945
        case popPunk = 1946
        case indiePop = 1947
        case turkishAlternative = 1998
        case indieLevant = 2024
        case indieEgyptian = 2025
        case indieMaghreb = 2026
        
        var stringValue: String {
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
    
    enum Blues: Int, CaseIterable {
        case blues = 1602
        case acousticBlues = 1737
        case chicagoBlues = 1738
        case classicBlues = 1739
        case contemporaryBlues = 1740
        case countryBlues = 1741
        case deltaBlues = 1742
        case electricBlues = 1743
        
        var stringValue: String {
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

    enum ChildrensMusic: Int, CaseIterable {
        case childrensMusic = 1604
        case lullabies = 1744
        case singAlong = 1745
        case stories = 1746
        
        var stringValue: String {
            switch self {
                case .childrensMusic: return "Children's Music"
                case .lullabies: return "Lullabies"
                case .singAlong: return "Sing-Along"
                case .stories: return "Stories"
            }
        }
    }

    enum Classical: Int, CaseIterable {
        case classical = 1605
        case opera = 1609
        case avantGarde = 1758
        case baroqueEra = 1759
        case chamberMusic = 1760
        case chant = 1761
        case choral = 1762
        case classicalCrossover = 1763
        case earlyMusic = 1764
        case highClassical = 1682
        case impressionist = 1765
        case medievalEra = 1766
        case minimalism = 1767
        case modernEra = 1768
        case orchestral = 1769
        case renaissance = 1770
        case romanticEra = 1771
        case weddingMusic = 1772
        case artSong = 1928
        case brassAndWoodwinds = 1929
        case soloInstrumental = 1930
        case contemporaryEra = 1931
        case oratorio = 1932
        case cantata = 1933
        case electronic = 1934
        case sacred = 1935
        case guitar = 1936
        case piano = 1337
        case violin = 1938
        case cello = 1939
        case percussion = 1940
        
        var stringValue: String {
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
    
    enum Comedy: Int, CaseIterable {
        case comedy = 1603
        case novelty = 1773
        case standupComedy = 1774
        
        var stringValue: String {
            switch self {
                case .comedy: return "Comedy"
                case .novelty: return "Novelty"
                case .standupComedy: return "Standup Comedy"
            }
        }
    }

    enum Country: Int, CaseIterable {
        case country = 1606
        case alternativeCountry = 1775
        case americana = 1776
        case bluegrass = 1777
        case contemporaryBluegrass = 1778
        case contemporaryCountry = 1779
        case countryGospel = 1780
        case honkyTonk = 1781
        case outlawCountry = 1782
        case thaiCountry = 1724
        case traditionalBluegrass = 1783
        case traditionalCountry = 1784
        case urbanCowboy = 1785
        
        var stringValue: String {
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

    enum Dance: Int, CaseIterable {
        case dance = 1617
        case breakbeat = 1786
        case exercise = 1787
        case garage = 1788
        case hardcore = 1789
        case house = 1790
        case jungleDrumAndBass = 1791
        case techno = 1792
        case trance = 1793
        case maghrebDance = 2032
        
        var stringValue: String {
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

    enum Electronic: Int, CaseIterable {
        case electronic = 1607
        case ambient = 1796
        case downtempo = 1797
        case electronica = 1798
        case idmExperimental = 1799
        case industrial = 1800
        case dubstep = 1941
        case bass = 1942
        case levantElectronic = 2027
        case electroChaabi = 2028
        case maghrebElectronic = 2029
        
        var stringValue: String {
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

    enum HipHopAndRap: Int, CaseIterable {
        case hipHopAndRap = 1618
        case alternativeRap = 1801
        case chineseHipHop = 1646
        case dirtySouth = 1802
        case eastCoastRap = 1803
        case gangstaRap = 1804
        case hardcoreRap = 1805
        case hipHop = 1806
        case koreanHipHop = 1647
        case latinRap = 1807
        case oldSchoolRap = 1808
        case rap = 1809
        case undergroundRap = 1810
        case westCoastRap = 1811
        case ukHipHop = 1943
        case turkishHipHopAndRap = 1999
        case levantHipHop = 2020
        case egyptianHipHop = 2021
        case maghrebHipHop = 2022
        case khaleejiHipHop = 2023
        
        var stringValue: String {
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

    enum Holiday: CaseIterable {
        case holiday
        case chanukah
        case easter
        case halloween
        case thanksgiving
        case christmas(Christmas)
        
        static var allCases: [Holiday] {
            var array: [Holiday] = [.holiday,
                                    .chanukah,
                                    .easter,
                                    .halloween,
                                    .thanksgiving]
            array.append(contentsOf: Christmas.allCases.map({Holiday.christmas($0)}))
            return array
        }

        var identifier: Int {
            switch self {
                case .holiday: return 1608
                case .chanukah: return 1812
                case .easter: return 1823
                case .halloween: return 1824
                case .thanksgiving: return 1825
                case .christmas(let genre): return genre.rawValue
            }
        }
        
        var stringValue: String {
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

        enum Christmas: Int, CaseIterable {
            case christmas = 1813
            case childrens = 1814
            case classic = 1815
            case classical = 1816
            case jazz = 1817
            case modern = 1818
            case pop = 1819
            case rAndB = 1820
            case religious = 1821
            case rock = 1822
            
            var stringValue: String {
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

    enum Jazz: Int, CaseIterable {
        case jazz = 1611
        case avantGardeJazz = 1826
        case bigBand = 1685
        case bop = 1828
        case contemporaryJazz = 1829
        case coolJazz = 1830
        case crossoverJazz = 1831
        case dixieland = 1832
        case fusion = 1833
        case hardBop = 1834
        case latinJazz = 1835
        case mainstreamJazz = 1836
        case ragtime = 1837
        case smoothJazz = 1838
        case tradJazz = 1839
        case vocalJazz = 1902
        
        var stringValue: String {
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

    enum Latin: Int, CaseIterable {
        case latin = 1612
        case alternativeAndRockinSpanish = 1840
        case baladasyBoleros = 1841
        case contemporaryLatin = 1842
        case latinJazz = 1843
        case latinUrban = 1844
        case popinSpanish = 1845
        case raices = 1846
        case musicaMexicana = 1847
        case salsayTropical = 1848
        
        var stringValue: String {
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

    enum NewAge: Int, CaseIterable {
        case newAge = 1613
        case healing = 1849
        case meditation = 1850
        case nature = 1851
        case relaxation = 1852
        case travel = 1853
        case yoga = 1948
        
        var stringValue: String {
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

    enum Pop: Int, CaseIterable {
        case pop = 1614
        case kPop = 1686
        case adultContemporary = 1854
        case britpop = 1855
        case cPop = 1655
        case cantopopHKPop = 1656
        case indoPop = 1664
        case koreanFolkPop = 1657
        case malaysianPop = 1660
        case mandopop = 1658
        case manillaSound = 1663
        case oldies = 1723
        case originalPilipinoMusic = 1662
        case pinoyPop = 1661
        case popRock = 1856
        case softRock = 1857
        case taiPop = 1659
        case teenPop = 1858
        case thaiPop = 1665
        case tribute = 1949
        case shows = 1950
        case turkishPop = 1996
        case levantPop = 2015
        case iraqiPop = 2016
        case egyptianPop = 2017
        case maghrebPop = 2018
        case khaleejiPop = 2019
        
        var stringValue: String {
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

    enum RandBSoul: Int, CaseIterable {
        case rAndBSoul = 1615
        case contemporaryRandB = 1859
        case disco = 1860
        case dooWop = 1861
        case funk = 1862
        case motown = 1863
        case neoSoul = 1864
        case soul = 1865
        
        var stringValue: String {
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

    enum Reggae: Int, CaseIterable {
        case reggae = 1624
        case modernDancehall = 1866
        case dub = 1867
        case rootsReggae = 1868
        case ska = 1869
        case loversRock = 1944
        
        var stringValue: String {
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

    enum Rock: Int, CaseIterable {
        case rock = 1621
        case adultAlternative = 1870
        case americanTradRock = 1871
        case arenaRock = 1872
        case bluesRock = 1873
        case britishInvasion = 1874
        case chineseRock = 1653
        case deathMetalBlackMetal = 1875
        case glamRock = 1876
        case hairMetal = 1877
        case hardRock = 1878
        case heavyMetal = 1688
        case jamBands = 1879
        case koreanRock = 1654
        case progRockArtRock = 1880
        case psychedelic = 1881
        case rockAndRoll = 1882
        case rockabilly = 1883
        case rootsRock = 1884
        case singerSongwriter = 1885
        case southernRock = 1886
        case surf = 1887
        case texMex = 1888
        case turkishRock = 1997
        
        var stringValue: String {
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
                case .heavyMetal: return "Heavy Metal"
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

    enum SingerSongwriter: Int, CaseIterable {
        case singerSongwriter = 1610
        case alternativeFolk = 1889
        case contemporaryFolk = 1890
        case contemporarySingerSongwriter = 1891
        case folkRock = 1892
        case newAcoustic = 1893
        case traditionalFolk = 1894
        
        var stringValue: String {
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

    enum Soundtrack: Int, CaseIterable {
        case soundtrack = 1616
        case foreignCinema = 1895
        case musicals = 1896
        case originalScore = 1897
        case soundEffects = 1718
        case tvSoundtrack = 1899
        case videoGame = 1959
        
        var stringValue: String {
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

    enum Vocal: Int, CaseIterable {
        case vocal = 1623
        case standards = 1900
        case traditionalPop = 1901
        case trot = 1666
        case vocalPop = 1903
        
        var stringValue: String {
            switch self {
                case .vocal: return "Vocal"
                case .standards: return "Standards"
                case .traditionalPop: return "Traditional Pop"
                case .trot: return "Trot"
                case .vocalPop: return "Vocal Pop"
            }
        }
    }

    enum World: Int, CaseIterable {
        case world = 1619
        case asia = 1907
        case australia = 1908
        case cajun = 1909
        case calypso = 1705
        case caribbean = 1910
        case celtic = 1911
        case celticFolk = 1912
        case contemporaryCeltic = 1913
        case dangdut = 1702
        case dini = 1699
        case europe = 1914
        case fado = 1727
        case farsi = 1711
        case flamenco = 1725
        case france = 1915
        case hawaii = 1916
        case iberia = 1728
        case indonesianReligious = 1703
        case israeli = 1712
        case japan = 1917
        case klezmer = 1918
        case northAmerica = 1919
        case polka = 1920
        case soca = 1706
        case southAfrica = 1921
        case southAmerica = 1922
        case tango = 1726
        case traditionalCeltic = 1923
        case worldbeat = 1924
        case zydeco = 1925
        
        var stringValue: String {
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
    
    enum Arabic: CaseIterable {
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

        var identifier: Int {
            switch self {
                case .arabic: return 1713
                case .arabicPop: return 1716
                case .islamic: return 1717
                case .northAfrican: return 1715
                case .maghrebRai: return 2008
                case .khaleeji(let genre): return genre.rawValue
                case .levant(let genre): return genre.rawValue
            }
        }
        
        var stringValue: String {
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

        enum Khaleeji: Int, CaseIterable {
            case khaleeji = 1714
            case khaleejiJalsat = 2009
            case khaleejiShailat = 2010
            
            var stringValue: String {
                switch self {
                    case .khaleeji: return "Khaleeji"
                    case .khaleejiJalsat: return "Khaleeji Jalsat"
                    case .khaleejiShailat: return "Khaleeji Shailat"
                }
            }
        }

        enum Levant: Int, CaseIterable {
            case levant = 2006
            case dabke = 2007
            
            var stringValue: String {
                switch self {
                    case .levant: return "Levant"
                    case .dabke: return "Dabke"
                }
            }
        }
    }

    enum Brazilian: Int, CaseIterable {
        case brazilian = 1671
        case axe = 1672
        case baileFunk = 1673
        case bossaNova = 1674
        case choro = 1675
        case forro = 1676
        case frevo = 1677
        case mpb = 1678
        case pagode = 1679
        case samba = 1680
        case sertanejo = 1681
        
        var stringValue: String {
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

    enum Chinese: Int, CaseIterable {
        case chinese = 1637
        case chineseClassical = 1638
        case chineseFlute = 1639
        case chineseOpera = 1640
        case chineseOrchestral = 1641
        case chineseRegionalFolk = 1642
        case chineseStrings = 1643
        case taiwaneseFolk = 1644
        case tibetanNativeMusic = 1645
        
        var stringValue: String {
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

    enum ChristianAndGospel: Int, CaseIterable {
        case christianAndGospel = 1622
        case ccm = 1747
        case christianMetal = 1748
        case christianPop = 1749
        case christianRap = 1750
        case christianRock = 1751
        case classicChristian = 1752
        case contemporaryGospel = 1753
        case gospel = 1754
        case praiseAndWorship = 1755
        case southernGospel = 1756
        case traditionalGospel = 1757
        
        var stringValue: String {
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

    enum EasyListening: Int, CaseIterable {
        case easyListening = 1625
        case lounge = 1794
        case swing = 1795
        
        var stringValue: String {
            switch self {
                case .easyListening: return "Easy Listening"
                case .lounge: return "Lounge"
                case .swing: return "Swing"
            }
        }
    }

    enum Folk: Int, CaseIterable {
        case folk = 1719
        case iraqiFolk = 2030
        case khaleejiFolk = 2031
        
        var stringValue: String {
            switch self {
                case .folk: return "Folk"
                case .iraqiFolk: return "Iraqi Folk"
                case .khaleejiFolk: return "Khaleeji Folk"
            }
        }
    }

    enum Indian: CaseIterable {
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
        
        var identifier: Int {
            switch self {
                case .indian: return 1690
                case .bollywood: return 1691
                case .devotionalAndSpiritual: return 1695
                case .ghazals: return 1707
                case .indianFolk: return 1708
                case .indianPop: return 1704
                case .sufi: return 1696
                case .regionalIndian(let genre): return genre.identifier
                case .indianClassical(let genre): return genre.rawValue
            }
        }
        
        var stringValue: String {
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
        
        enum RegionalIndian: CaseIterable {
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

            var identifier: Int {
                switch self {
                    case .regionalIndian: return 1694
                    case .tamil: return 1692
                    case .telugu: return 1693
                    case .malayalam: return 1962
                    case .kannada: return 1963
                    case .marathi: return 1964
                    case .gujarati: return 1965
                    case .assamese: return 1966
                    case .bhojpuri: return 1967
                    case .haryanvi: return 1968
                    case .odia: return 1969
                    case .rajasthani: return 1970
                    case .urdu: return 1971
                    case .punjabi(let genre): return genre.rawValue
                    case .bengali(let genre): return genre.rawValue
                }
            }
            
            var stringValue: String {
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

            enum Punjabi: Int, CaseIterable {
                case punjabi = 1972
                case punjabiPop = 1960
                
                var stringValue: String {
                    switch self {
                        case .punjabi: return "Punjabi"
                        case .punjabiPop: return "Punjabi Pop"
                    }
                }
            }

            enum Bengali: Int, CaseIterable {
                case bengali = 1973
                case rabindraSangeet = 1961
                
                var stringValue: String {
                    switch self {
                        case .bengali: return "Bengali"
                        case .rabindraSangeet: return "Rabindra Sangeet"
                    }
                }
            }
        }

        enum IndianClassical: Int, CaseIterable {
            case indianClassical = 1697
            case carnaticClassical = 1974
            case hindustaniClassical = 1975
            
            var stringValue: String {
                switch self {
                    case .indianClassical: return "Indian Classical"
                    case .carnaticClassical: return "Carnatic Classical"
                    case .hindustaniClassical: return "Hindustani Classical"
                }
            }
        }
    }

    enum Korean: Int, CaseIterable {
        case korean = 1648
        case koreanClassical = 1649
        case koreanTradInstrumental = 1651
        case koreanTradSong = 1650
        case koreanTradTheater = 1652
        
        var stringValue: String {
            switch self {
                case .korean: return "Korean"
                case .koreanClassical: return "Korean Classical"
                case .koreanTradInstrumental: return "Korean Trad Instrumental"
                case .koreanTradSong: return "Korean Trad Song"
                case .koreanTradTheater: return "Korean Trad Theater"
            }
        }
    }

    enum African: Int, CaseIterable {
        case african = 1904
        case afrikaans = 1710
        case afroBeat = 1905
        case afroPop = 1906
        case afroHouse = 1976
        case afroSoul = 1977
        case afrobeats = 1978
        case benga = 1979
        case bongoFlava = 1980
        case coupeDecale = 1981
        case gqom = 1982
        case highlife = 1983
        case kuduro = 1984
        case kizomba = 1985
        case kwaito = 1986
        case mbalax = 1987
        case ndombolo = 1988
        case shangaanElectro = 1989
        case soukous = 1990
        case taarab = 1991
        case zouglou = 1992
        case maskandi = 2000
        
        var stringValue: String {
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

    enum Turkish: Int, CaseIterable {
        case turkish = 1730
        case arabesque = 1709
        case halk = 1700
        case sanat = 1701
        case ozgun = 1993
        case fantezi = 1994
        case religious = 1995
        
        var stringValue: String {
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

    enum Russian: Int, CaseIterable {
        case russian = 1729
        case russianChanson = 1698
        case russianRomance = 2001
        case russianBard = 2002
        case russianPop = 2003
        case russianRock = 2004
        case russianHipHop = 2005
        
        var stringValue: String {
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

    enum Cuban: Int, CaseIterable {
        case cuban = 1951
        case mambo = 1952
        case chachacha = 1953
        case guajira = 1954
        case son = 1955
        case bolero = 1956
        case guaracha = 1957
        case timba = 1958
        
        var stringValue: String {
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
    
    enum Tarab: Int, CaseIterable {
        case tarab = 2011
        case iraqiTarab = 2012
        case egyptianTarab = 2013
        case khaleejiTarab = 2014
        
        var stringValue: String {
            switch self {
                case .tarab: return "Tarab"
                case .iraqiTarab: return "Iraqi Tarab"
                case .egyptianTarab: return "Egyptian Tarab"
                case .khaleejiTarab: return "Khaleeji Tarab"
            }
        }
    }
}
