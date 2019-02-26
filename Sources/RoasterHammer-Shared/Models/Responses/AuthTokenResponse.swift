//
//  AuthTokenResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/25/19.
//

import Foundation

public struct AuthTokenResponse: Codable {
    public let token: String

    public init(token: String) {
        self.token = token
    }
}
