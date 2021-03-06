import Foundation

public struct RelicDTO {
    public let id: Int
    public let name: String
    public let description: String

    public init(id: Int, name: String, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}

public struct RelicResponse: Codable {
    public let id: Int
    public let name: String
    public let description: String
    public let weapon: WeaponResponse?
    public let keywords: [KeywordName]

    public init(relicDTO: RelicDTO,
                weapon: WeaponResponse?,
                keywords: [KeywordName]) {
        self.id = relicDTO.id
        self.name = relicDTO.name
        self.description = relicDTO.description
        self.weapon = weapon
        self.keywords = keywords
    }
}
