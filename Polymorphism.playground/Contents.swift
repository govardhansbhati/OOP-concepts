import UIKit

// Polymorphism: Working with Different Shapes

protocol Shape {
    func area() -> Double
    func description() -> String
}

class Rectangle: Shape {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }

    func description() -> String {
        return "Rectangle with width \(width) and height \(height)"
    }
}

class Circle: Shape {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    func area() -> Double {
        return Double.pi * radius * radius
    }

    func description() -> String {
        return "Circle with radius \(radius)"
    }
}

func printShapeDetails(shape: Shape) {
    print(shape.description())
    print("Area: \(shape.area())")
}

// Example usage:
let myRectangle = Rectangle(width: 5.0, height: 10.0)
let myCircle = Circle(radius: 3.0)

printShapeDetails(shape: myRectangle)
printShapeDetails(shape: myCircle)
