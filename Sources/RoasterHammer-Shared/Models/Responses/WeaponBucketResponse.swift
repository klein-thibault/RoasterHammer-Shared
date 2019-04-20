//
//  WeaponBucketResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 4/18/19.
//

import Foundation

public struct WeaponBucketDTO {
    public let id: Int
    public let name: String
    public let minWeaponQuantity: Int
    public let maxWeaponQuantity: Int

    public init(id: Int, name: String, minWeaponQuantity: Int, maxWeaponQuantity: Int) {
        self.id = id
        self.name = name
        self.minWeaponQuantity = minWeaponQuantity
        self.maxWeaponQuantity = maxWeaponQuantity
    }
}

public struct WeaponBucketResponse: Codable {
    public let id: Int
    public let name: String
    public let minWeaponQuantity: Int
    public let maxWeaponQuantity: Int
    public let weapons: [WeaponResponse]

    public init(weaponBucket: WeaponBucketDTO, weapons: [WeaponResponse]) {
        self.id = weaponBucket.id
        self.name = weaponBucket.name
        self.minWeaponQuantity = weaponBucket.minWeaponQuantity
        self.maxWeaponQuantity = weaponBucket.maxWeaponQuantity
        self.weapons = weapons
    }
}
