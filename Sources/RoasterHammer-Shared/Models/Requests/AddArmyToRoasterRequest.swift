import Foundation

public struct AddArmyToRoasterRequest: Codable {
    public let armyId: Int

    public init(armyId: Int) {
        self.armyId = armyId
    }
}
