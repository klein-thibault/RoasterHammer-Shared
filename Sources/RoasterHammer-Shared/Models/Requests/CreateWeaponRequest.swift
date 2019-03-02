import Foundation

public struct CreateWeaponRequest: Codable {
    public let name: String
    public let range: String
    public let type: String
    public let strength: String
    public let armorPiercing: String
    public let damage: String
    public let cost: Int
    public let ability: String

    public init(name: String,
         range: String,
         type: String,
         strength: String,
         armorPiercing: String,
         damage: String,
         cost: Int,
         ability: String) {
        self.name = name
        self.range = range
        self.type = type
        self.strength = strength
        self.armorPiercing = armorPiercing
        self.damage = damage
        self.cost = cost
        self.ability = ability
    }
}
