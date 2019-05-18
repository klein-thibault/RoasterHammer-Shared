import Foundation

public struct WarlordTraitDTO {
    public let id: Int
    public let name: String
    public let description: String

    public init(id: Int, name: String, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}

public struct WarlordTraitResponse: Codable {
    public let id: Int
    public let name: String
    public let description: String

    public init(warlordTraitDTO: WarlordTraitDTO) {
        self.id = warlordTraitDTO.id
        self.name = warlordTraitDTO.name
        self.description = warlordTraitDTO.description
    }
}
