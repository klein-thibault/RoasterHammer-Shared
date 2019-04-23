//
//  RoasterResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct RoasterDTO {
    public let id: Int
    public let name: String
    public let version: Int

    public init(id: Int, name: String, version: Int) {
        self.id = id
        self.name = name
        self.version = version
    }
}

public struct RoasterResponse: Codable {
    public let id: Int
    public let name: String
    public let version: Int
    public let totalCost: Int
    public let detachments: [DetachmentResponse]
    public let rules: [RuleResponse]

    public init(roaster: RoasterDTO, detachments: [DetachmentResponse], rules: [RuleResponse]) {
        self.id = roaster.id
        self.name = roaster.name
        self.version = roaster.version
        self.totalCost = detachments.reduce(0) { $0 + $1.totalCost }
        self.detachments = detachments
        self.rules = rules
    }
}
