//
//  SelectedModelResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct SelectedModelDTO {
    public let id: Int

    public init(id: Int) {
        self.id = id
    }
}

public struct SelectedModelResponse: Codable {
    public let id: Int
    public let cost: Int
    public let model: ModelResponse
    public let selectedWeapons: [WeaponResponse]

    public init(selectedModel: SelectedModelDTO,
         model: ModelResponse,
         selectedWeapons: [WeaponResponse]) {
        self.id = selectedModel.id
        self.cost = model.cost + selectedWeapons.reduce(0) { $0 + $1.cost }
        self.model = model
        self.selectedWeapons = selectedWeapons
    }
}
