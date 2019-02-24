import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RoasterHammer_SharedTests.allTests),
    ]
}
#endif