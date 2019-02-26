//
//  UserResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/25/19.
//

import Foundation

public struct UserResponse: Codable {
    public let customerId: String
    public let email: String

    public init(customerId: String, email: String) {
        self.customerId = customerId
        self.email = email
    }
}
