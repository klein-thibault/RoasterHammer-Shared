import Foundation

public struct AddRelicRequest: Codable {
    public let name: String
    public let description: String
    public let weaponId: Int?
    public let keywordIds: [Int]

    public init(name: String,
                description: String,
                weaponId: Int?,
                keywordIds: [Int]) {
        self.name = name
        self.description = description
        self.weaponId = weaponId
        self.keywordIds = keywordIds
    }
}
