import Foundation

public struct CreateRoasterRequest: Codable {
    public let name: String

    public init(name: String) {
        self.name = name
    }
}
