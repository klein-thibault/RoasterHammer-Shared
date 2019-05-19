import Foundation

public struct EditSelectedUnitRequest: Codable {
    public let warlordTraitId: Int?
    public let relicId: Int?

    public init(warlordTraitId: Int?, relicId: Int?) {
        self.warlordTraitId = warlordTraitId
        self.relicId = relicId
    }
}
