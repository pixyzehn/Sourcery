import Foundation

class Foo {
    var name: String
    var value: Int
}

protocol AutoEquatable {}

class FooSubclass: Foo, AutoEquatable {
    var other: String
}
