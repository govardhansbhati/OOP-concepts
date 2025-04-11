import UIKit
//  Encapsulation: Managing a Bank Account

class BankAccount {
    private var accountNumber: String // Private property, accessible only within the class
    private var balance: Double

    init(accountNumber: String, initialBalance: Double) {
        self.accountNumber = accountNumber
        self.balance = initialBalance
    }

    func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
            print("Deposited \(amount). New balance: \(balance)")
        } else {
            print("Invalid deposit amount.")
        }
    }

    func withdraw(amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
            print("Withdrawn \(amount). New balance: \(balance)")
        } else {
            print("Insufficient funds or invalid withdrawal amount.")
        }
    }

    func getBalance() -> Double {
        return balance
    }

    func getAccountNumber() -> String {
        return accountNumber
    }

    //Example of a function that uses private properties.
    func displayAccountDetails(){
        print("Account Number: \(accountNumber), Balance: \(balance)")
    }
}

// Example usage:
let myAccount = BankAccount(accountNumber: "1234567890", initialBalance: 1000.0)
myAccount.deposit(amount: 500.0)
myAccount.withdraw(amount: 200.0)
myAccount.withdraw(amount: 2000.0)
print("Current balance: \(myAccount.getBalance())")
myAccount.displayAccountDetails()
