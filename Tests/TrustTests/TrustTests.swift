import XCTest
@testable import Trust

struct User {
    let name: String = "gitaeklee"
    let email: String = "gitaeklee96@gmail.com"
}

extension User: Trust { }

final class TrustTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results
    }
    
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func testDCI() {
        let _ = User().describe("user object", { object in
            object.context("with 300 and 200", { context in
                context.it("returns 500", { it in
                    XCTAssertEqual(it.email, "gitaeklee96@gmail.com")
                    XCTAssertEqual(it.name, "gitaeklee")
                    XCTAssertEqual(sum(a: 300, b: 200), 500)
                })
            })
        })
    }
}
