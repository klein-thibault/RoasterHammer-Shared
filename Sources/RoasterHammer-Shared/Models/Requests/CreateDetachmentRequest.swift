import Foundation

public struct CreateDetachmentRequest: Codable {
    public let name: String
    public let commandPoints: Int
    public let armyId: Int

    public init(name: String, commandPoints: Int, armyId: Int) {
        self.name = name
        self.commandPoints = commandPoints
        self.armyId = armyId
    }
}
