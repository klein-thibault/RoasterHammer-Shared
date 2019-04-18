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

    public init(id: Int, name: String) {
      self.id = id
      self.name = name
    }
}

public struct WeaponBucketResponse: Codable {
    public let id: Int
    public let name: String
    public let weapons: [WeaponResponse]

    public init(weaponBucket: WeaponBucketDTO, weapons: [WeaponResponse]) {
        self.id = weaponBucket.id
        self.name = weaponBucket.name
        self.weapons = weapons
    }
}