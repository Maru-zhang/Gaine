import XCTest
import Gaine
import UIKit

struct MyType {
    var foo: String?
}

class Tests: XCTestCase {

    let foo = Gaine(UILabel()) {
        $0.text = "demo"
        $0.textAlignment = .center
    }

    let bar = Gaine(MyType()) {
        $0.foo = "foo"
    }

    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(foo.text == "demo", "Pass")
    }
}
