//
//  CreateWeaponBucketRequest.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 4/18/19.
//

import Foundation

public struct CreateWeaponBucketRequest: Content {
    public let name: String

    public init(name: String) {
        self.name = name
    }
}