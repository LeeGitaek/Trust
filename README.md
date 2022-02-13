# Trust

### Swift - DCI Pattern Test Library
#### Support SPM 

  <a href="https://github.com/LeeGitaek">
    <img src="https://img.shields.io/badge/iOS개발자-이기택-orange?style=flat" />
  </a>

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
