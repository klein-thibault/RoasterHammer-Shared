//
//  GameResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct GameDTO {
    public let id: Int
    public let name: String
    public let version: Int

    public init(id: Int, name: String, version: Int) {
        self.id = id
        self.name = name
        self.version = version
    }
}

public struct GameResponse: Codable {
    public let id: Int
    public let name: String
    public let version: Int
    public let roasters: [RoasterResponse]
    public let rules: [RuleResponse]

    public init(game: GameDTO, roasters: [RoasterResponse], rules: [RuleResponse]) {
        self.id = game.id
        self.name = game.name
        self.version = game.version
        self.roasters = roasters
        self.rules = rules
    }
}
