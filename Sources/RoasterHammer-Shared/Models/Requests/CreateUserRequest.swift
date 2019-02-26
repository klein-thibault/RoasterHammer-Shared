//
//  CreateUserRequest.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/25/19.
//

import Foundation

public struct CreateUserRequest: Codable {
    public let email: String
    public let password: String

    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
