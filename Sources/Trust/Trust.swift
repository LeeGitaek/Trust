import Foundation
#if os(iOS) || os(tvOS)
  import UIKit
#endif

public protocol Trust {}

extension Trust where Self: Any {
    
    @inlinable
    public func describe(_ props: String, _ block: (Self) throws -> Void) rethrows {
        print("@Describe: \(props) ")
        try block(self)
    }
    
    @inlinable
    public func context(_ props: String, _ block: (Self) throws -> Void) rethrows {
        print("\t @Context: \(props)")
        try block(self)
    }
    
    @inlinable
    public func it(_ props: String, _ block: (Self) throws -> Void) rethrows {
        print("\t\t @It: \(props) \n")
        try block(self)
    }
}
