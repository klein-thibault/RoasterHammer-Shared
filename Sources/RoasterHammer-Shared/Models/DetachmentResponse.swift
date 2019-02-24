//
//  DetachmentResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct DetachmentDTO {
    public let id: Int
    public let name: String
    public let commandPoints: Int
    
    public init(id: Int, name: String, commandPoints: Int) {
        self.id = id
        self.name = name
        self.commandPoints = commandPoints
    }
}

public struct DetachmentResponse: Codable {
    public let id: Int
    public let name: String
    public let commandPoints: Int
    public let selectedFaction: FactionResponse?
    public let roles: [RoleResponse]
    public let army: ArmyResponse

    public init(detachment: DetachmentDTO,
                selectedFaction: FactionResponse?,
                roles: [RoleResponse],
                army: ArmyResponse) {
        self.id = detachment.id
        self.name = detachment.name
        self.commandPoints = detachment.commandPoints
        self.selectedFaction = selectedFaction
        self.roles = roles
        self.army = army
    }
}

public struct DetachmentShortResponse: Codable {
    public let name: String
    public let commandPoints: Int

    public init(name: String, commandPoints: Int) {
        self.name = name
        self.commandPoints = commandPoints
    }
}
