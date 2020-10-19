//
//  ITunesU.swift
//  
//
//  Created by Nolaine Crusher on 10/18/20.
//

import Foundation
enum ITunesU: CaseIterable {
    case iTunesU
    case businessAndEconomics(BusinessAndEconomics)
    case engineering(Engineering)
    case musicArtAndDesign(MusicArtAndDesign)
    case healthAndMedicine(HealthAndMedicine)
    case history(History)
    case communicationsAndJournalism(CommunicationsAndJournalism)
    case philosophy(Philosophy)
    case religionAndSpirituality(ReligionAndSpirituality)
    case languages(Languages)
    case writingAndLiterature(WritingAndLiterature)
    case mathematics(Mathematics)
    case science(Science)
    case lawAndPolitics(LawAndPolitics)
    case socialScience(SocialScience)
    case society(Society)
    case teachingAndLearning(TeachingAndLearning)
    
    static var allCases: [ITunesU] {
        var array: [ITunesU] = [.iTunesU]
        array.append(contentsOf: BusinessAndEconomics.allCases.map({ITunesU.businessAndEconomics($0)}))
        array.append(contentsOf: Engineering.allCases.map({ITunesU.engineering($0)}))
        array.append(contentsOf: MusicArtAndDesign.allCases.map({ITunesU.musicArtAndDesign($0)}))
        array.append(contentsOf: HealthAndMedicine.allCases.map({ITunesU.healthAndMedicine($0)}))
        array.append(contentsOf: History.allCases.map({ITunesU.history($0)}))
        array.append(contentsOf: CommunicationsAndJournalism.allCases.map({ITunesU.communicationsAndJournalism($0)}))
        array.append(contentsOf: Philosophy.allCases.map({ITunesU.philosophy($0)}))
        array.append(contentsOf: ReligionAndSpirituality.allCases.map({ITunesU.religionAndSpirituality($0)}))
        array.append(contentsOf: Languages.allCases.map({ITunesU.languages($0)}))
        array.append(contentsOf: WritingAndLiterature.allCases.map({ITunesU.writingAndLiterature($0)}))
        array.append(contentsOf: Mathematics.allCases.map({ITunesU.mathematics($0)}))
        array.append(contentsOf: Science.allCases.map({ITunesU.science($0)}))
        array.append(contentsOf: LawAndPolitics.allCases.map({ITunesU.lawAndPolitics($0)}))
        array.append(contentsOf: SocialScience.allCases.map({ITunesU.socialScience($0)}))
        array.append(contentsOf: Society.allCases.map({ITunesU.society($0)}))
        array.append(contentsOf: TeachingAndLearning.allCases.map({ITunesU.teachingAndLearning($0)}))
        return array
    }
    
    var identifier: Int {
        switch self {
            case .iTunesU: return 40000000
            case .businessAndEconomics(let subject): return subject.rawValue
            case .engineering(let subject): return subject.rawValue
            case .musicArtAndDesign(let subject): return subject.rawValue
            case .healthAndMedicine(let subject): return subject.rawValue
            case .history(let subject): return subject.rawValue
            case .communicationsAndJournalism(let subject): return subject.rawValue
            case .philosophy(let subject): return subject.rawValue
            case .religionAndSpirituality(let subject): return subject.rawValue
            case .languages(let subject): return subject.rawValue
            case .writingAndLiterature(let subject): return subject.rawValue
            case .mathematics(let subject): return subject.rawValue
            case .science(let subject): return subject.rawValue
            case .lawAndPolitics(let subject): return subject.rawValue
            case .socialScience(let subject): return subject.rawValue
            case .society(let subject): return subject.rawValue
            case .teachingAndLearning(let subject): return subject.rawValue
        }
    }
    
    var stringValue: String {
        switch self {
            case .iTunesU: return "iTunes U"
            case .businessAndEconomics(let subject):
                switch subject {
                    case .businessAndEconomics: return subject.stringValue
                    default: return "\(BusinessAndEconomics.businessAndEconomics.stringValue)|\(subject.stringValue)"
                }
            case .engineering(let subject):
                switch subject {
                    case .engineering: return subject.stringValue
                    default: return "\(Engineering.engineering.stringValue)|\(subject.stringValue)"
                }
            case .musicArtAndDesign(let subject):
                switch subject {
                    case .musicArtAndDesign: return subject.stringValue
                    default: return "\(MusicArtAndDesign.musicArtAndDesign.stringValue)|\(subject.stringValue)"
                }
            case .healthAndMedicine(let subject):
                switch subject {
                    case .healthAndMedicine: return subject.stringValue
                    default: return "\(HealthAndMedicine.healthAndMedicine.stringValue)|\(subject.stringValue)"
                }
            case .history(let subject):
                switch subject {
                    case .history: return subject.stringValue
                    default: return "\(History.history.stringValue)|\(subject.stringValue)"
                }
            case .communicationsAndJournalism(let subject):
                switch subject {
                    case .communicationsAndJournalism: return subject.stringValue
                    default: return "\(CommunicationsAndJournalism.communicationsAndJournalism.stringValue)|\(subject.stringValue)"
                }
            case .philosophy(let subject):
                switch subject {
                    case .philosophy: return subject.stringValue
                    default: return "\(Philosophy.philosophy.stringValue)|\(subject.stringValue)"
                }
            case .religionAndSpirituality(let subject):
                switch subject {
                    case .religionAndSpirituality: return subject.stringValue
                    default: return "\(ReligionAndSpirituality.religionAndSpirituality.stringValue)|\(subject.stringValue)"
                }
            case .languages(let subject):
                switch subject {
                    case .languages: return subject.stringValue
                    default: return "\(Languages.languages.stringValue)|\(subject.stringValue)"
                }
            case .writingAndLiterature(let subject):
                switch subject {
                    case .writingAndLiterature: return subject.stringValue
                    default: return "\(WritingAndLiterature.writingAndLiterature.stringValue)|\(subject.stringValue)"
                }
            case .mathematics(let subject):
                switch subject {
                    case .mathematics: return subject.stringValue
                    default: return "\(Mathematics.mathematics.stringValue)|\(subject.stringValue)"
                }
            case .science(let subject):
                switch subject {
                    case .science: return subject.stringValue
                    default: return "\(Science.science.stringValue)|\(subject.stringValue)"
                }
            case .lawAndPolitics(let subject):
                switch subject {
                    case .lawAndPolitics: return subject.stringValue
                    default: return "\(LawAndPolitics.lawAndPolitics.stringValue)|\(subject.stringValue)"
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
            case .teachingAndLearning(let subject):
                switch subject {
                    case .teachingAndLearning: return subject.stringValue
                    default: return "\(TeachingAndLearning.teachingAndLearning.stringValue)|\(subject.stringValue)"
                }
        }
    }
    
    enum BusinessAndEconomics: Int, CaseIterable {
        case businessAndEconomics = 40000001
        case economics = 40000002
        case finance = 40000003
        case hospitality = 40000004
        case management = 40000005
        case marketing = 40000006
        case personalFinance = 40000007
        case realEstate = 40000008
        case entrepreneurship = 40000121

        var stringValue: String {
            switch self {
                case .businessAndEconomics: return "Business & Economics"
                case .economics: return "Economics"
                case .finance: return "Finance"
                case .hospitality: return "Hospitality"
                case .management: return "Management"
                case .marketing: return "Marketing"
                case .personalFinance: return "Personal Finance"
                case .realEstate: return "Real Estate"
                case .entrepreneurship: return "Entrepreneurship"
            }
        }
    }
    
    enum Engineering: Int, CaseIterable {
        case engineering = 40000009
        case chemicalAndPetroleumEngineering = 40000010
        case civilEngineering = 40000011
        case computerScience = 40000012
        case electricalEngineering = 40000013
        case environmentalEngineering = 40000014
        case mechanicalEngineering = 40000015

        var stringValue: String {
            switch self {
                case .engineering: return "Engineering"
                case .chemicalAndPetroleumEngineering: return "Chemical & Petroleum Engineering"
                case .civilEngineering: return "Civil Engineering"
                case .computerScience: return "Computer Science"
                case .electricalEngineering: return "Electrical Engineering"
                case .environmentalEngineering: return "Environmental Engineering"
                case .mechanicalEngineering: return "Mechanical Engineering"
            }
        }
    }
    
    enum MusicArtAndDesign: Int, CaseIterable {
        case musicArtAndDesign = 40000016
        case architecture = 40000017
        case artHistory = 40000019
        case dance = 40000020
        case film = 40000021
        case design = 40000022
        case interiorDesign = 40000023
        case music = 40000024
        case theater = 40000025
        case culinaryArts = 40000116
        case fashion = 40000117
        case mediaArts = 40000118
        case photography = 40000119
        case visualArt = 40000120

        var stringValue: String {
            switch self {
                case .musicArtAndDesign: return "Music, Art, & Design"
                case .architecture: return "Architecture"
                case .artHistory: return "Art History"
                case .dance: return "Dance"
                case .film: return "Film"
                case .design: return "Design"
                case .interiorDesign: return "Interior Design"
                case .music: return "Music"
                case .theater: return "Theater"
                case .culinaryArts: return "Culinary Arts"
                case .fashion: return "Fashion"
                case .mediaArts: return "Media Arts"
                case .photography: return "Photography"
                case .visualArt: return "Visual Art"
            }
        }
    }
    
    enum HealthAndMedicine: Int, CaseIterable {
        case healthAndMedicine = 40000026
        case anatomyAndPhysiology = 40000027
        case behavioralScience = 40000028
        case dentistry = 40000029
        case dietAndNutrition = 40000030
        case emergencyMedicine = 40000031
        case genetics = 40000032
        case gerontology = 40000033
        case healthAndExerciseScience = 40000034
        case immunology = 40000035
        case neuroscience = 40000036
        case pharmacologyAndToxicology = 40000037
        case psychiatry = 40000038
        case globalHealth = 40000039
        case radiology = 40000040
        case nursing = 40000129

        var stringValue: String {
            switch self {
                case .healthAndMedicine: return "Health & Medicine"
                case .anatomyAndPhysiology: return "Anatomy & Physiology"
                case .behavioralScience: return "Behavioral Science"
                case .dentistry: return "Dentistry"
                case .dietAndNutrition: return "Diet & Nutrition"
                case .emergencyMedicine: return "Emergency Medicine"
                case .genetics: return "Genetics"
                case .gerontology: return "Gerontology"
                case .healthAndExerciseScience: return "Health & Exercise Science"
                case .immunology: return "Immunology"
                case .neuroscience: return "Neuroscience"
                case .pharmacologyAndToxicology: return "Pharmacology & Toxicology"
                case .psychiatry: return "Psychiatry"
                case .globalHealth: return "Global Health"
                case .radiology: return "Radiology"
                case .nursing: return "Nursing"
            }
        }
    }
    
    enum History: Int, CaseIterable {
        case history = 40000041
        case ancientHistory = 40000042
        case medievalHistory = 40000043
        case militaryHistory = 40000044
        case modernHistory = 40000045
        case africanHistory = 40000046
        case asiaPacificHistory = 40000047
        case europeanHistory = 40000048
        case middleEasternHistory = 40000049
        case northAmericanHistory = 40000050
        case southAmericanHistory = 40000051

        var stringValue: String {
            switch self {
                case .history: return "History"
                case .ancientHistory: return "Ancient History"
                case .medievalHistory: return "Medieval History"
                case .militaryHistory: return "Military History"
                case .modernHistory: return "Modern History"
                case .africanHistory: return "African History"
                case .asiaPacificHistory: return "Asia-Pacific History"
                case .europeanHistory: return "European History"
                case .middleEasternHistory: return "Middle Eastern History"
                case .northAmericanHistory: return "North American History"
                case .southAmericanHistory: return "South American History"
            }
        }
    }
    
    enum CommunicationsAndJournalism: Int, CaseIterable {
        case communicationsAndJournalism = 40000053
        case broadcasting = 40000122
        case digitalMedia = 40000123
        case journalism = 40000124
        case photojournalism = 40000125
        case print = 40000126
        case speech = 40000127
        case writing = 40000128

        var stringValue: String {
            switch self {
                case .communicationsAndJournalism: return "Communications & Journalism"
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
    
    enum Philosophy: Int, CaseIterable {
        case philosophy = 40000054
        case aesthetics = 40000146
        case epistemology = 40000147
        case ethics = 40000148
        case metaphysics = 40000149
        case politicalPhilosophy = 40000150
        case logic = 40000151
        case philosophyOfLanguage = 40000152
        case philosophyOfReligion = 40000153

        var stringValue: String {
            switch self {
                case .philosophy: return "Philosophy"
                case .aesthetics: return "Aesthetics"
                case .epistemology: return "Epistemology"
                case .ethics: return "Ethics"
                case .metaphysics: return "Metaphysics"
                case .politicalPhilosophy: return "Political Philosophy"
                case .logic: return "Logic"
                case .philosophyOfLanguage: return "Philosophy of Language"
                case .philosophyOfReligion: return "Philosophy of Religion"
            }
        }
    }
    
    enum ReligionAndSpirituality: Int, CaseIterable {
        case religionAndSpirituality = 40000055
        case buddhism = 40000156
        case christianity = 40000157
        case comparativeReligion = 40000158
        case hinduism = 40000159
        case islam = 40000160
        case judaism = 40000161
        case otherReligions = 40000162
        case spirituality = 40000163
        
        var stringValue: String {
            switch self {
                case .religionAndSpirituality: return "Religion & Spirituality"
                case .buddhism: return "Buddhism"
                case .christianity: return "Christianity"
                case .comparativeReligion: return "Comparative Religion"
                case .hinduism: return "Hinduism"
                case .islam: return "Islam"
                case .judaism: return "Judaism"
                case .otherReligions: return "Other Religions"
                case .spirituality: return "Spirituality"
            }
        }
    }
    
    enum Languages: Int, CaseIterable {
        case languages = 40000056
        case africanLanguages = 40000057
        case ancientLanguages = 40000058
        case english = 40000061
        case french = 40000063
        case german = 40000064
        case italian = 40000065
        case linguistics = 40000066
        case spanish = 40000068
        case speechPathology = 40000069
        case arabic = 40000130
        case chinese = 40000131
        case hebrew = 40000132
        case hindi = 40000133
        case indigenousLanguages = 40000134
        case japanese = 40000135
        case korean = 40000136
        case otherLanguages = 40000137
        case portuguese = 40000138
        case russian = 40000139
        case dutch = 40000173
        case luxembourgish = 40000174
        case swedish = 40000175
        case norwegian = 40000176
        case finnish = 40000177
        case danish = 40000178
        case polish = 40000179
        case turkish = 40000180
        case flemish = 40000181

        var stringValue: String {
            switch self {
                case .languages: return "Languages"
                case .africanLanguages: return "African Languages"
                case .ancientLanguages: return "Ancient Languages"
                case .english: return "English"
                case .french: return "French"
                case .german: return "German"
                case .italian: return "Italian"
                case .linguistics: return "Linguistics"
                case .spanish: return "Spanish"
                case .speechPathology: return "Speech Pathology"
                case .arabic: return "Arabic"
                case .chinese: return "Chinese"
                case .hebrew: return "Hebrew"
                case .hindi: return "Hindi"
                case .indigenousLanguages: return "Indigenous Languages"
                case .japanese: return "Japanese"
                case .korean: return "Korean"
                case .otherLanguages: return "Other Languages"
                case .portuguese: return "Portuguese"
                case .russian: return "Russian"
                case .dutch: return "Dutch"
                case .luxembourgish: return "Luxembourgish"
                case .swedish: return "Swedish"
                case .norwegian: return "Norwegian"
                case .finnish: return "Finnish"
                case .danish: return "Danish"
                case .polish: return "Polish"
                case .turkish: return "Turkish"
                case .flemish: return "Flemish"
            }
        }
    }
    
    enum WritingAndLiterature: Int, CaseIterable {
        case writingAndLiterature = 40000070
        case anthologies = 40000071
        case biography = 40000072
        case classics = 40000073
        case literaryCriticism = 40000074
        case fiction = 40000075
        case poetry = 40000076
        case comparativeLiterature = 40000145

        var stringValue: String {
            switch self {
                case .writingAndLiterature: return "Writing & Literature"
                case .anthologies: return "Anthologies"
                case .biography: return "Biography"
                case .classics: return "Classics"
                case .literaryCriticism: return "Literary Criticism"
                case .fiction: return "Fiction"
                case .poetry: return "Poetry"
                case .comparativeLiterature: return "Comparative Literature"
            }
        }
    }
    
    enum Mathematics: Int, CaseIterable {
        case mathematics = 40000077
        case advancedMathematics = 40000078
        case algebra = 40000079
        case arithmetic = 40000080
        case calculus = 40000081
        case geometry = 40000082
        case statistics = 40000083

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
    
    enum Science: Int, CaseIterable {
        case science = 40000084
        case agricultural = 40000085
        case astronomy = 40000086
        case atmosphere = 40000087
        case biology = 40000088
        case chemistry = 40000089
        case ecology = 40000090
        case geography = 40000091
        case geology = 40000092
        case physics = 40000093
        case environment = 40000164

        var stringValue: String {
            switch self {
                case .science: return "Science"
                case .agricultural: return "Agricultural"
                case .astronomy: return "Astronomy"
                case .atmosphere: return "Atmosphere"
                case .biology: return "Biology"
                case .chemistry: return "Chemistry"
                case .ecology: return "Ecology"
                case .geography: return "Geography"
                case .geology: return "Geology"
                case .physics: return "Physics"
                case .environment: return "Environment"
            }
        }
    }
    
    enum LawAndPolitics: Int, CaseIterable {
        case lawAndPolitics = 40000140
        case law = 40000095
        case politicalScience = 40000096
        case publicAdministration = 40000097
        case foreignPolicyAndInternationalRelations = 40000141
        case localGovernments = 40000142
        case nationalGovernments = 40000143
        case worldAffairs = 40000144

        var stringValue: String {
            switch self {
                case .lawAndPolitics: return "Law & Politics"
                case .law: return "Law"
                case .politicalScience: return "Political Science"
                case .publicAdministration: return "Public Administration"
                case .foreignPolicyAndInternationalRelations: return "Foreign Policy & International Relations"
                case .localGovernments: return "Local Governments"
                case .nationalGovernments: return "National Governments"
                case .worldAffairs: return "World Affairs"
            }
        }
    }
    
    enum SocialScience: Int, CaseIterable {
        case socialScience = 40000094
        case psychology = 40000098
        case socialWelfare = 40000099
        case sociology = 40000100
        case archaeology = 40000154
        case anthropology = 40000155
        
        var stringValue: String {
            switch self {
                case .socialScience: return "Social Science"
                case .psychology: return "Psychology"
                case .socialWelfare: return "Social Welfare"
                case .sociology: return "Sociology"
                case .archaeology: return "Archaeology"
                case .anthropology: return "Anthropology"
            }
        }
    }
    
    enum Society: Int, CaseIterable {
        case society = 40000101
        case asiaPacificStudies = 40000103
        case europeanStudies = 40000104
        case indigenousStudies = 40000105
        case latinAndCaribbeanStudies = 40000106
        case middleEasternStudies = 40000107
        case womensStudies = 40000108
        case africanStudies = 40000165
        case americanStudies = 40000166
        case crossCulturalStudies = 40000167
        case immigrationAndEmigration = 40000168
        case raceAndEthnicityStudies = 40000169
        case sexualityStudies = 40000170

        var stringValue: String {
            switch self {
                case .society: return "Society"
                case .asiaPacificStudies: return "Asia Pacific Studies"
                case .europeanStudies: return "European Studies"
                case .indigenousStudies: return "Indigenous Studies"
                case .latinAndCaribbeanStudies: return "Latin & Caribbean Studies"
                case .middleEasternStudies: return "Middle Eastern Studies"
                case .womensStudies: return "Women's Studies"
                case .africanStudies: return "African Studies"
                case .americanStudies: return "American Studies"
                case .crossCulturalStudies: return "Cross-cultural Studies"
                case .immigrationAndEmigration: return "Immigration & Emigration"
                case .raceAndEthnicityStudies: return "Race & Ethnicity Studies"
                case .sexualityStudies: return "Sexuality Studies"
            }
        }
    }
    
    enum TeachingAndLearning: Int, CaseIterable {
        case teachingAndLearning = 40000109
        case curriculumAndTeaching = 40000110
        case educationalLeadership = 40000111
        case familyAndChildcare = 40000112
        case learningResources = 40000113
        case psychologyAndResearch = 40000114
        case specialEducation = 40000115
        case educationalTechnology = 40000171
        case informationLibraryScience = 40000172

        var stringValue: String {
            switch self {
                case .teachingAndLearning: return "Teaching & Learning"
                case .curriculumAndTeaching: return "Curriculum & Teaching"
                case .educationalLeadership: return "Educational Leadership"
                case .familyAndChildcare: return "Family & Childcare"
                case .learningResources: return "Learning Resources"
                case .psychologyAndResearch: return "Psychology & Research"
                case .specialEducation: return "Special Education"
                case .educationalTechnology: return "Educational Technology"
                case .informationLibraryScience: return "Information/Library Science"
            }
        }
    }
}
