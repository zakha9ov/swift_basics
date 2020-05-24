import UIKit

enum nitroSet {
    case start
    case off
}

enum enginSet {
    case start
    case off
}

enum windowSet {
    case open
    case closed
}

enum bootSet {
    case loading(loadValue: Int)
    case unloading(unloadValue: Int)
}


class Car {
    var mark: String
    var year: Int
    var color: String
    var engin: enginSet
    var window: windowSet
    
    func carPrint() {
        
    }
    
    init(mark: String, year: Int, color: String, engin: enginSet, window: windowSet) {
        self.mark = mark
        self.year = year
        self.color = color
        self.engin = engin
        self.window = window
    }
}




class TrunkCar: Car {
    var bootValueTotal: Int
    var bootValue: Int

    func carLoad(carFuncValue: bootSet) {
        switch carFuncValue {
        case .loading(var loadValue) where loadValue > bootValueTotal || loadValue > bootValueTotal - bootValue:
            print("Будет перегруз — убавь лишка")
        case .loading(var loadValue) where bootValue == 0 || bootValue != 0:
            bootValue += loadValue
            engin = enginSet.off
        default:
            break
        }
    }
    
    override func carPrint() {
        print("Свойства объекта TrunkCar:\nМакрка — \(mark)\nГод выпуска — \(year)\nЦвет машины — \(color)\nСостояние двигателя — \(engin)\nПоложение окон — \(window)\nВместимость богажника — \(bootValueTotal)\nЗагруженность богажника — \(bootValue)\n")
    }
    
    init(mark: String, year: Int, color: String, engin: enginSet, window: windowSet, bootValueTotal: Int, bootValue: Int) {
        self.bootValueTotal = bootValueTotal
        self.bootValue = bootValue
        super.init(mark: mark, year: year, color: color, engin: engin, window: window)
        
    }

}



class sportСar: Car {
    var nitro: nitroSet
    
    init(mark: String, year: Int, color: String, engin: enginSet, window: windowSet, nitro: nitroSet) {
        self.nitro = nitro
        super.init(mark: mark, year: year, color: color, engin: engin, window: window)
    }
    
    override func carPrint() {
        print("Свойства объекта sportCar:\nМакрка — \(mark)\nГод выпуска — \(year)\nЦвет машины — \(color)\nСостояние двигателя — \(engin)\nПоложение окон — \(window)\nСостояние нитро — \(nitro)\n")
    }
    
    func GoGoGo() {
        switch nitro {
        case .off:
            nitro = nitroSet.start
            engin = enginSet.start
        default:
            break
        }
    }

}


var laz = TrunkCar(mark: "Лаз", year: 2020, color: "Красный", engin: .start, window: .closed, bootValueTotal: 1000, bootValue: 0)
laz.carLoad(carFuncValue: .loading(loadValue: 50))
laz.carPrint()

var kamaz = TrunkCar(mark: "Камаз", year: 2020, color: "Хамелион", engin: .start, window: .closed, bootValueTotal: 1000, bootValue: 900)
kamaz.carLoad(carFuncValue: .loading(loadValue: 50))
kamaz.carPrint()

var camaro = sportСar(mark: "Шевроле Камаро", year: 1960, color: "Черный", engin: .off, window: .closed, nitro: .off)
camaro.GoGoGo()
camaro.carPrint()

var f1 = sportСar(mark: "Болид формулы-1", year: 1919, color: "Бэлий", engin: .off, window: .closed, nitro: .off)
f1.GoGoGo()
f1.carPrint()
