//
//  CreateWeaponBucketRequest.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 4/18/19.
//

import Foundation

public struct CreateWeaponBucketRequest: Codable {
    public let name: String

    public init(name: String) {
        self.name = name
    }
}