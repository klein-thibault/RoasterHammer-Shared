//
//  SelectedUnitResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct SelectedUnitDTO {
    public let id: Int

    public init(id: Int) {
        self.id = id
    }
}

public struct SelectedUnitResponse: Codable {
    public let id: Int
    public let cost: Int
    public let unit: UnitResponse
    public let models: [SelectedModelResponse]

    public init(selectedUnit: SelectedUnitDTO,
         unit: UnitResponse,
         models: [SelectedModelResponse]) {
        self.id = selectedUnit.id
        self.cost = models.reduce(0) { $0 + $1.cost }
        self.unit = unit
        self.models = models
    }
}
