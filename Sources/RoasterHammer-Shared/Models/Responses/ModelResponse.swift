//
//  ModelResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct CharacteristicsDTO: Codable {
    public let id: Int
    public let movement: String
    public let weaponSkill: String
    public let balisticSkill: String
    public let strength: String
    public let toughness: String
    public let wounds: String
    public let attacks: String
    public let leadership: String
    public let save: String
    public let modelId: Int

    public init(id: Int,
                movement: String,
                weaponSkill: String,
                balisticSkill: String,
                strength: String,
                toughness: String,
                wounds: String,
                attacks: String,
                leadership: String,
                save: String,
                modelId: Int) {
        self.id = id
        self.movement = movement
        self.weaponSkill = weaponSkill
        self.balisticSkill = balisticSkill
        self.strength = strength
        self.toughness = toughness
        self.wounds = wounds
        self.attacks = attacks
        self.leadership = leadership
        self.save = save
        self.modelId = modelId
    }
}

public struct ModelDTO {
    public let id: Int
    public let name: String
    public let cost: Int
    public let minQuantity: Int
    public let maxQuantity: Int
    public let weaponQuantity: Int

    public init(id: Int,
                name: String,
                cost: Int,
                minQuantity: Int,
                maxQuantity: Int,
                weaponQuantity: Int) {
        self.id = id
        self.name = name
        self.cost = cost
        self.minQuantity = minQuantity
        self.maxQuantity = maxQuantity
        self.weaponQuantity = weaponQuantity
    }
}

public struct ModelResponse: Codable {
    public let id: Int
    public let name: String
    public let cost: Int
    public let minQuantity: Int
    public let maxQuantity: Int
    public let weaponQuantity: Int
    public let characteristics: CharacteristicsDTO
    public let weaponBuckets: [WeaponBucketResponse]

    public init(model: ModelDTO,
                characteristics: CharacteristicsDTO,
                weaponBuckets: [WeaponBucketResponse]) {
        self.id = model.id
        self.name = model.name
        self.cost = model.cost
        self.minQuantity = model.minQuantity
        self.maxQuantity = model.maxQuantity
        self.weaponQuantity = model.weaponQuantity
        self.characteristics = characteristics
        self.weaponBuckets = weaponBuckets
    }
}
