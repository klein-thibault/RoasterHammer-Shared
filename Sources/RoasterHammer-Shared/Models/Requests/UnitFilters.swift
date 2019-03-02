import Foundation

public struct UnitFilters: Codable {
    public let armyId: Int?

    public init(armyId: Int?) {
        self.armyId = armyId
    }
}
