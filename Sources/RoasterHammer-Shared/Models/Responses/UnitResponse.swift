//
//  UnitResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct UnitDTO {
    public let id: Int
    public let name: String
    public let isUnique: Bool
    public let minQuantity: Int
    public let maxQuantity: Int

    public init(id: Int,
                name: String,
                isUnique: Bool,
                minQuantity: Int,
                maxQuantity: Int) {
        self.id = id
        self.name = name
        self.isUnique = isUnique
        self.minQuantity = minQuantity
        self.maxQuantity = maxQuantity
    }
}

public struct UnitResponse: Codable {
    public let id: Int
    public let name: String
    public let cost: Int
    public let isUnique: Bool
    public let minQuantity: Int
    public let maxQuantity: Int
    public let unitType: String
    public let army: ArmyResponse
    public let models: [ModelResponse]
    public let keywords: [String]
    public let rules: [RuleResponse]

    public init(unit: UnitDTO,
                unitType: String,
                army: ArmyResponse,
                models: [ModelResponse],
                keywords: [String],
                rules: [RuleResponse]) {
        self.id = unit.id
        self.name = unit.name
        self.cost = models.reduce(0) { $0 + $1.cost }
        self.isUnique = unit.isUnique
        self.minQuantity = unit.minQuantity
        self.maxQuantity = unit.maxQuantity
        self.unitType = unitType
        self.army = army
        self.models = models
        self.keywords = keywords
        self.rules = rules
    }
}
