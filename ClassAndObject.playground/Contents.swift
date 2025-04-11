import UIKit

class Car {
    var brand: String
    init(brand: String) {
        self.brand = brand
    }
    func drive() {
        print("\(brand) is driving")
    }
}

let tesla = Car(brand: "Tesla")
tesla.drive()  // Output: Tesla is driving
