//
//  WeaponResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct WeaponDTO {
    public let id: Int
    public let name: String
    public let range: String
    public let type: String
    public let strength: String
    public let armorPiercing: String
    public let damage: String
    public let cost: Int
    public let ability: String

    public init(id: Int,
                name: String,
                range: String,
                type: String,
                strength: String,
                armorPiercing: String,
                damage: String,
                cost: Int,
                ability: String) {
        self.id = id
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

public struct WeaponResponse: Codable {
    public let id: Int
    public let name: String
    public let range: String
    public let type: String
    public let strength: String
    public let armorPiercing: String
    public let damage: String
    public let cost: Int
    public let ability: String

    public init(weapon: WeaponDTO) {
        self.id = weapon.id
        self.name = weapon.name
        self.range = weapon.range
        self.type = weapon.type
        self.strength = weapon.strength
        self.armorPiercing = weapon.armorPiercing
        self.damage = weapon.damage
        self.cost = weapon.cost
        self.ability = weapon.ability
    }
}
