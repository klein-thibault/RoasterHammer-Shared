//
//  CreateWeaponBucketRequest.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 4/18/19.
//

import Foundation

public struct CreateWeaponBucketRequest: Codable {
    public let name: String
    public let minWeaponQuantity: Int
    public let maxWeaponQuantity: Int

    public init(name: String, minWeaponQuantity: Int, maxWeaponQuantity: Int) {
        self.name = name
        self.minWeaponQuantity = minWeaponQuantity
        self.maxWeaponQuantity = maxWeaponQuantity
    }
}
