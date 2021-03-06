import Foundation

public struct CreateFactionRequest: Codable {
    public let name: String
    public let rules: [AddRuleRequest]

    public init(name: String, rules: [AddRuleRequest]) {
        self.name = name
        self.rules = rules
    }
}
