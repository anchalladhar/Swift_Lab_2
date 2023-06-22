import Foundation

class Computer {
    let cpu: String
    let gpu: String
    var ram: Int
    var state: String = "Off"
    var temp: Double
    
    init(cpu: String, gpu: String, ram: Int, temp: Double) {
        self.cpu = cpu
        self.gpu = gpu
        self.ram = ram
        self.temp = temp
    }
    
    func upgradeRam(newAmount: Int) {
        ram = newAmount
    }
    
    func turnOn() {
        state = "On"
    }
    
    func turnOff() {
        state = "Off"
    }
    
    func getTemp() -> Double {
        return temp
    }
}

class Laptop: Computer {
    let isRamUpgradable: Bool
    let screenSize: Double
    let isTouchScreen: Bool
    
    init(cpu: String, gpu: String, ram: Int, state: String, temp: Double, isRamUpgradable: Bool, screenSize: Double, isTouchScreen: Bool) {
        self.isRamUpgradable = isRamUpgradable
        self.screenSize = screenSize
        self.isTouchScreen = isTouchScreen
        
        super.init(cpu: cpu, gpu: gpu, ram: ram, temp: temp)
        self.state = state
    }
    
    override func upgradeRam(newAmount: Int) {
        if isRamUpgradable {
            super.upgradeRam(newAmount: newAmount)
        }
    }
    
    func closeScreen() {
        state = "Sleep"
    }
}

// Example usage

let computer = Computer(cpu: "Intel Core i7", gpu: "Nvidia GeForce RTX 3080", ram: 16, temp: 40.0)
computer.turnOn()
print(computer.state) // Output: On

let laptop = Laptop(cpu: "AMD Ryzen 9", gpu: "Nvidia GeForce RTX 3070", ram: 8, state: "Off", temp: 35.0, isRamUpgradable: true, screenSize: 15.6, isTouchScreen: true)
laptop.upgradeRam(newAmount: 16)
print(laptop.ram) // Output: 16

laptop.closeScreen()
print(laptop.state) // Output: Sleep
//
//  Question3.swift
//  Assignment2-advSwift
//
//  Created by Cambrian on 2022-10-17.
//

import Foundation
/**
 create a parent class and a subclass
 
 PARENT CLASS:
 class name:
 - Computer
 attributes:
 - cpu: String
 - gpu: String
 - ram: Int
 - state: String = "Off"
 - temp: Double
 methods:
 - init(cpu: String, gpu: String, ram: Int, temp: Double)
 - upgradeRam(newAmount: Int)
 - turnOn() => will set the state to 'On'
 - turnOff() => will set the state to 'Off'
 - getTemp() -> Double
 
 
 CHILD CLASS:
 class name:
 - Laptop
 attributes:
 - isRamUpgradable: Bool
 - screenSize: Double
 - isTouchScreen: Bool
 methods:
 - init(cpu: String, gpu: String, ram: Int, state: String, temp: Double, isRamUpgradable: Bool, screenSize: Double, isTouchScreen: Bool)
 - override upgradeRam() => if the ram is not upgradable do nothing
 - closeScreen() => this will set the laptop state to 'Sleep'
 */
