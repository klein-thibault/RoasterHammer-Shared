import Foundation

public struct AddWeaponToModelRequest: Codable {
    public let minQuantity: Int
    public let maxQuantity: Int

    public init(minQuantity: Int, maxQuantity: Int) {
        self.minQuantity = minQuantity
        self.maxQuantity = maxQuantity
    }
}
