//
//  RoleResponse.swift
//  RoasterHammer-Shared
//
//  Created by Thibault Klein on 2/24/19.
//

import Foundation

public struct RoleDTO {
    public let id: Int
    public let name: String

    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

public struct RoleResponse: Codable {
    public let id: Int
    public let name: String
    public let totalCost: Int
    public let units: [SelectedUnitResponse]

    public init(role: RoleDTO, units: [SelectedUnitResponse]) {
        self.id = role.id
        self.name = role.name
        self.totalCost = units.reduce(0) { $0 + $1.cost }
        self.units = units
    }
}
