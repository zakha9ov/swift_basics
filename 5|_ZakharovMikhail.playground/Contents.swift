import UIKit

enum carSet {
    case open, closed
    case start, stop
}

protocol Car {
    var mark: String {get set}
    var window: carSet {get set}
    var engin: carSet {get set}
    
    func printCarInfo()
}


extension Car {
    mutating func windowFunc(_ windowValue: carSet) {
        switch windowValue {
        case .closed:
            window = .open
        default:
            window = .closed
        }
    }
    
    mutating func enginFunc(_ enginValue: carSet) {
        switch enginValue {
        case .stop:
            engin = .start
        default:
            engin = .stop
        }
    }
}


class TrunkCar: Car {
    var mark: String
    var window: carSet
    var engin: carSet
    var bootValueTotal: Int
    
    init(mark: String, windiw: carSet, engin: carSet, bootValueTotal: Int) {
        self.mark = mark
        self.window = windiw
        self.engin = engin
        self.bootValueTotal = bootValueTotal
    }
    
    func printCarInfo() {
        print("\nХарактеристика машины \(mark):\nсостояния окон — \(window)\nСостояние двигателя — \(engin)\nОбъем цистерны — \(bootValueTotal)\n")
    }
    
    
}

class SportCar: Car {
    var mark: String
    var window: carSet
    var engin: carSet
    var nitro: carSet
    
    init(mark: String, window: carSet, engin: carSet, nitro: carSet) {
        self.mark = mark
        self.window = window
        self.engin = engin
        self.nitro = nitro
    }
    
    func printCarInfo() {
        print("\nХарактеристика машины \(mark):\nсостояния окон — \(window)\nСостояние двигателя — \(engin)\nСостояние нитро — \(nitro)\n")
    }

}


extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "\n\(mark) \(window) окна\n"
    }
    
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return "\n\(mark) \(nitro) ниторо\n"
    }

}


var dodge = SportCar(mark: "Додж", window: .closed, engin: .start, nitro: .stop)
dodge.windowFunc(dodge.window)
print(dodge.description)
dodge.printCarInfo()

var mustang = SportCar(mark: "Форд Мустанг", window: .closed, engin: .stop, nitro: .stop)
mustang.enginFunc(mustang.engin)
print(mustang.description)
mustang.printCarInfo()


var volvo = TrunkCar(mark: "Вольво", windiw: .closed, engin: .stop, bootValueTotal: 10_000)
volvo.windowFunc(volvo.window)
print(volvo.description)
volvo.printCarInfo()

var hummer = TrunkCar(mark: "Хаммер", windiw: .open, engin: .start, bootValueTotal: 100_000)
hummer.windowFunc(hummer.window)
print(hummer.description)
hummer.printCarInfo()

