import Foundation

public struct AddDetachmentToRoasterRequest: Codable {
    public let detachmentId: Int

    public init(detachmentId: Int) {
        self.detachmentId = detachmentId
    }
}
