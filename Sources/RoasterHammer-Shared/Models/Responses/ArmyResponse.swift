//
//  ArmyResponse.swift
//  RoasterhammerShared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct ArmyDTO {
    public let id: Int
    public let name: String

    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

public struct ArmyResponse: Codable {
    public let id: Int
    public let name: String
    public let factions: [FactionResponse]
    public let rules: [RuleResponse]
    public let relics: [RelicResponse]
    public let warlordTraits: [WarlordTraitResponse]
    public let psychicPowers: [PsychicPowerResponse]

    public init(army: ArmyDTO,
                factions: [FactionResponse],
                rules: [RuleResponse],
                relics: [RelicResponse],
                warlordTraits: [WarlordTraitResponse],
                psychicPowers: [PsychicPowerResponse]) {
        self.id = army.id
        self.name = army.name
        self.factions = factions
        self.rules = rules
        self.relics = relics
        self.warlordTraits = warlordTraits
        self.psychicPowers = psychicPowers
    }
}
