import Foundation

public struct UnitFilters: Codable {
    public let armyId: String?
    public let unitType: String?

    public init(armyId: String?, unitType: String?) {
        self.armyId = armyId
        self.unitType = unitType
    }
}
