import UIKit

// Abstraction: Managing Device Interactions

protocol Device {
    func turnOn()
    func turnOff()
    func performAction()
}

class SmartPhone: Device {
    func turnOn() {
        print("SmartPhone turned on.")
    }

    func turnOff() {
        print("SmartPhone turned off.")
    }

    func performAction() {
        print("SmartPhone sending a message.")
    }
}

class Television: Device {
    func turnOn() {
        print("Television turned on.")
    }

    func turnOff() {
        print("Television turned off.")
    }

    func performAction() {
        print("Television changing channel.")
    }
}

func interactWithDevice(device: Device) {
    device.turnOn()
    device.performAction()
    device.turnOff()
}

// Example usage:
let myPhone = SmartPhone()
let myTV = Television()

interactWithDevice(device: myPhone)
interactWithDevice(device: myTV)
