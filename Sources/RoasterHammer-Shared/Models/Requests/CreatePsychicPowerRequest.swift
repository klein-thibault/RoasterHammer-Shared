import Foundation

public struct CreatePsychicPowerRequest: Codable {
    public let name: String
    public let description: String
    public let keywordIds: [Int]

    public init(name: String,
                description: String,
                keywordIds: [Int]) {
        self.name = name
        self.description = description
        self.keywordIds = keywordIds
    }
}
