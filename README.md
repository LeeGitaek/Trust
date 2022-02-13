# Trust

### Swift - DCI Pattern Test Library

- How to use ?
```swift

struct User {
    let name: String = "gitaeklee"
    let email: String = "gitaeklee96@gmail.com"
}

extension User: Trust { }

```

```swift

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

```
