// Generated using Sourcery 0.5.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Quick
import Nimble
@testable import Sourcery

class TypedSpec: QuickSpec {
    override func spec() {

        describe("AssociatedValue") {
            it("can report optional via KVC") {
                expect(AssociatedValue(typeName: TypeName("Int?")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(AssociatedValue(typeName: TypeName("Int!")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(AssociatedValue(typeName: TypeName("Int?")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(false))
                expect(AssociatedValue(typeName: TypeName("Int!")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(true))
                expect(AssociatedValue(typeName: TypeName("Int?")).value(forKeyPath: "unwrappedTypeName") as? String).to(equal("Int"))
            }

            it("can report tuple type via KVC") {
                let tuple = TupleType(name: "(Int, Int)", elements: [])
                let sut = AssociatedValue(typeName: TypeName("(Int, Int)"))
                sut.typeName.tuple = tuple

                expect(sut.value(forKeyPath: "isTuple") as? Bool).to(equal(true))
            }

            it("can report actual type name via KVC") {
                let sut = AssociatedValue(typeName: TypeName("Alias"))
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Alias")))

                sut.typeName.actualTypeName = TypeName("Int")
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Int")))
            }
        }

        describe("MethodParameter") {
            it("can report optional via KVC") {
                expect(MethodParameter(typeName: TypeName("Int?")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(MethodParameter(typeName: TypeName("Int!")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(MethodParameter(typeName: TypeName("Int?")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(false))
                expect(MethodParameter(typeName: TypeName("Int!")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(true))
                expect(MethodParameter(typeName: TypeName("Int?")).value(forKeyPath: "unwrappedTypeName") as? String).to(equal("Int"))
            }

            it("can report tuple type via KVC") {
                let tuple = TupleType(name: "(Int, Int)", elements: [])
                let sut = MethodParameter(typeName: TypeName("(Int, Int)"))
                sut.typeName.tuple = tuple

                expect(sut.value(forKeyPath: "isTuple") as? Bool).to(equal(true))
            }

            it("can report actual type name via KVC") {
                let sut = AssociatedValue(typeName: TypeName("Alias"))
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Alias")))

                sut.typeName.actualTypeName = TypeName("Int")
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Int")))
            }
        }

        describe("TupleElement") {
            it("can report optional via KVC") {
                expect(TupleElement(typeName: TypeName("Int?")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(TupleElement(typeName: TypeName("Int!")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(TupleElement(typeName: TypeName("Int?")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(false))
                expect(TupleElement(typeName: TypeName("Int!")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(true))
                expect(TupleElement(typeName: TypeName("Int?")).value(forKeyPath: "unwrappedTypeName") as? String).to(equal("Int"))
            }

            it("can report tuple type via KVC") {
                let tuple = TupleType(name: "(Int, Int)", elements: [])
                let sut = TupleElement(typeName: TypeName("(Int, Int)"))
                sut.typeName.tuple = tuple

                expect(sut.value(forKeyPath: "isTuple") as? Bool).to(equal(true))
            }

            it("can report actual type name via KVC") {
                let sut = AssociatedValue(typeName: TypeName("Alias"))
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Alias")))

                sut.typeName.actualTypeName = TypeName("Int")
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Int")))
            }
        }

        describe("Typealias") {
            it("can report optional via KVC") {
                expect(Typealias(typeName: TypeName("Int?")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(Typealias(typeName: TypeName("Int!")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(Typealias(typeName: TypeName("Int?")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(false))
                expect(Typealias(typeName: TypeName("Int!")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(true))
                expect(Typealias(typeName: TypeName("Int?")).value(forKeyPath: "unwrappedTypeName") as? String).to(equal("Int"))
            }

            it("can report tuple type via KVC") {
                let tuple = TupleType(name: "(Int, Int)", elements: [])
                let sut = Typealias(typeName: TypeName("(Int, Int)"))
                sut.typeName.tuple = tuple

                expect(sut.value(forKeyPath: "isTuple") as? Bool).to(equal(true))
            }

            it("can report actual type name via KVC") {
                let sut = AssociatedValue(typeName: TypeName("Alias"))
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Alias")))

                sut.typeName.actualTypeName = TypeName("Int")
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Int")))
            }
        }

        describe("Variable") {
            it("can report optional via KVC") {
                expect(Variable(typeName: TypeName("Int?")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(Variable(typeName: TypeName("Int!")).value(forKeyPath: "isOptional") as? Bool).to(equal(true))
                expect(Variable(typeName: TypeName("Int?")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(false))
                expect(Variable(typeName: TypeName("Int!")).value(forKeyPath: "isImplicitlyUnwrappedOptional") as? Bool).to(equal(true))
                expect(Variable(typeName: TypeName("Int?")).value(forKeyPath: "unwrappedTypeName") as? String).to(equal("Int"))
            }

            it("can report tuple type via KVC") {
                let tuple = TupleType(name: "(Int, Int)", elements: [])
                let sut = Variable(typeName: TypeName("(Int, Int)"))
                sut.typeName.tuple = tuple

                expect(sut.value(forKeyPath: "isTuple") as? Bool).to(equal(true))
            }

            it("can report actual type name via KVC") {
                let sut = AssociatedValue(typeName: TypeName("Alias"))
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Alias")))

                sut.typeName.actualTypeName = TypeName("Int")
                expect(sut.value(forKeyPath: "actualTypeName") as? TypeName).to(equal(TypeName("Int")))
            }
        }

    }
}
