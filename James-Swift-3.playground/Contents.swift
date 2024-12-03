import UIKit

class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int // Ram in GB
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    func displaySpecs() {
        print("Brand: \(self.brand) Processor: \(self.processor) Ram: \(self.ram)GB")
    }
}


class Laptop: Computer {
    private var isTouchScreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchScreen: Bool) {
        self.isTouchScreen = isTouchScreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Touchscreen: \(isTouchScreen.toString())")
        }
        
    }


extension Bool {
    func toString() -> String {
        return self ? "Yes" : "No"
    }
}

class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Deticate GPU: \(hasDedicatedGPU.toString())")
        
    }
}


class Server: Computer {
    private var rackUnits: Int
    
    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
    }
func printRackUnits() {
        print("Rack Units: \(rackUnits)")
    }
}


//Test Code

var mac: Laptop = Laptop(brand: "Apple", processor: "M1", ram: 16, isTouchScreen: false)
    
mac.displaySpecs()


var work: Desktop = Desktop(brand: "Dell", processor: "Intel i7", ram: 32, hasDedicatedGPU: true)

work.displaySpecs()


var company: Server = Server(brand: "HP", processor: "Xeon", ram: 64, rackUnits: 4)

company.displaySpecs()
company.printRackUnits()
