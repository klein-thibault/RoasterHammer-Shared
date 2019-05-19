//
//  SelectedUnitResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct SelectedUnitDTO {
    public let id: Int
    public let isWarlord: Bool

    public init(id: Int, isWarlord: Bool) {
        self.id = id
        self.isWarlord = isWarlord
    }
}

public struct SelectedUnitResponse: Codable {
    public let id: Int
    public let cost: Int
    public let isWarlord: Bool
    public let unit: UnitResponse
    public let models: [SelectedModelResponse]
    public let warlordTrait: WarlordTraitResponse?
    public let relic: RelicResponse?

    public init(selectedUnit: SelectedUnitDTO,
         unit: UnitResponse,
         models: [SelectedModelResponse],
         warlordTrait: WarlordTraitResponse?,
         relic: RelicResponse?) {
        self.id = selectedUnit.id
        self.cost = models.reduce(0) { $0 + $1.cost }
        self.isWarlord = selectedUnit.isWarlord
        self.unit = unit
        self.models = models
        self.warlordTrait = warlordTrait
        self.relic = relic
    }
}
