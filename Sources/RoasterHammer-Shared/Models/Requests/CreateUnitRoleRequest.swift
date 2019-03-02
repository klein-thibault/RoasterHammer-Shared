import Foundation

public struct CreateUnitRoleRequest: Codable {
    public let name: String

    public init(name: String) {
        self.name = name
    }
}
