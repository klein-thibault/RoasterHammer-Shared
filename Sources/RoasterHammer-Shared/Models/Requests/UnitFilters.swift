import Foundation

public struct UnitFilters: Codable {
    public let armyId: Int?
    public let unitType: String?

    public init(armyId: Int?, unitType: String?) {
        self.armyId = armyId
        self.unitType = unitType
    }
}
