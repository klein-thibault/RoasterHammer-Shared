import Foundation

public struct PsychicPowerDTO {
    public let id: Int
    public let name: String
    public let description: String

    public init(id: Int, name: String, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}

public struct PsychicPowerResponse: Codable {
    public let id: Int
    public let name: String
    public let description: String
    public let keywords: [KeywordName]

    public init(psychicPowerDTO: PsychicPowerDTO, keywords: [KeywordName]) {
        self.id = psychicPowerDTO.id
        self.name = psychicPowerDTO.name
        self.description = psychicPowerDTO.description
        self.keywords = keywords
    }
}
