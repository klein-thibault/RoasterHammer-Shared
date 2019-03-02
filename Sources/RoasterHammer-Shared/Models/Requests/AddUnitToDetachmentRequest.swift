import Foundation

public struct AddUnitToDetachmentRequest: Codable {
    public let unitQuantity: Int

    public init(unitQuantity: Int) {
        self.unitQuantity = unitQuantity
    }
}
