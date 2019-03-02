import Foundation

public typealias KeywordName = String

public struct CreateUnitRequest: Codable {
    public let name: String
    public let isUnique: Bool
    public let minQuantity: Int
    public let maxQuantity: Int
    public let unitTypeId: Int
    public let armyId: Int
    public let models: [CreateModelRequest]
    public let keywords: [KeywordName]
    public let rules: [AddRuleRequest]

    public init(name: String,
         isUnique: Bool,
         minQuantity: Int,
         maxQuantity: Int,
         unitTypeId: Int,
         armyId: Int,
         models: [CreateModelRequest],
         keywords: [KeywordName],
         rules: [AddRuleRequest]) {
        self.name = name
        self.isUnique = isUnique
        self.minQuantity = minQuantity
        self.maxQuantity = maxQuantity
        self.unitTypeId = unitTypeId
        self.armyId = armyId
        self.models = models
        self.keywords = keywords
        self.rules = rules
    }
}

public struct CreateModelRequest: Codable {
    public let name: String
    public let cost: Int
    public let minQuantity: Int
    public let maxQuantity: Int
    public let weaponQuantity: Int
    public let characteristics: CreateCharacteristicsRequest

    public init(name: String,
         cost: Int,
         minQuantity: Int,
         maxQuantity: Int,
         weaponQuantity: Int,
         characteristics: CreateCharacteristicsRequest) {
        self.name = name
        self.cost = cost
        self.minQuantity = minQuantity
        self.maxQuantity = maxQuantity
        self.weaponQuantity = weaponQuantity
        self.characteristics = characteristics
    }
}

public struct CreateCharacteristicsRequest: Codable {
    public let movement: String
    public let weaponSkill: String
    public let balisticSkill: String
    public let strength: String
    public let toughness: String
    public let wounds: String
    public let attacks: String
    public let leadership: String
    public let save: String

    public init(movement: String,
         weaponSkill: String,
         balisticSkill: String,
         strength: String,
         toughness: String,
         wounds: String,
         attacks: String,
         leadership: String,
         save: String) {
        self.movement = movement
        self.weaponSkill = weaponSkill
        self.balisticSkill = balisticSkill
        self.strength = strength
        self.toughness = toughness
        self.wounds = wounds
        self.attacks = attacks
        self.leadership = leadership
        self.save = save
    }
}
