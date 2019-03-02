import Foundation

public struct EditFactionRequest: Codable {
    public let name: String?
    public let rules: [AddRuleRequest]?
    public let armyId: Int?

    public init(name: String?, rules: [AddRuleRequest]?, armyId: Int?) {
        self.name = name
        self.rules = rules
        self.armyId = armyId
    }
}
