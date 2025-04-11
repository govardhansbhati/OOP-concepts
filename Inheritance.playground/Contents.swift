import UIKit
//  Inheritance: Managing Different Types of Employees

class Employee {
    var name: String
    var salary: Double

    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }

    func calculateBonus() -> Double {
        return salary * 0.1 // Default bonus calculation
    }

    func employeeDetails() -> String {
        return "Name: \(name), Salary: \(salary)"
    }
}

class Manager: Employee {
    var teamSize: Int

    init(name: String, salary: Double, teamSize: Int) {
        self.teamSize = teamSize
        super.init(name: name, salary: salary)
    }

    override func calculateBonus() -> Double {
        return salary * 0.2 // Higher bonus for managers
    }

    override func employeeDetails() -> String {
        return super.employeeDetails() + ", Team Size: \(teamSize)"
    }
}

class Developer: Employee {
    var programmingLanguage: String

    init(name: String, salary: Double, programmingLanguage: String) {
        self.programmingLanguage = programmingLanguage
        super.init(name: name, salary: salary)
    }

    override func employeeDetails() -> String {
        return super.employeeDetails() + ", Language: \(programmingLanguage)"
    }
}

// Example usage:
let manager = Manager(name: "John Smith", salary: 80000.0, teamSize: 10)
let developer = Developer(name: "Alice Johnson", salary: 60000.0, programmingLanguage: "Swift")

print(manager.employeeDetails())
print("Manager Bonus: \(manager.calculateBonus())")
print(developer.employeeDetails())
print("Developer Bonus: \(developer.calculateBonus())")
