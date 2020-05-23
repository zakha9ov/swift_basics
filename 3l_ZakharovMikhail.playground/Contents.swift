import UIKit

enum workEngin: String {
    case start = "Запустить"
    case stop = "Заглущить"
}

enum openWindow: String {
    case open = "Открыть"
    case close = "Закрыть"
}

enum emptyBoot {
    case loading(loadingValue: Int)
    case unloading(unloadingValue: Int)
}

struct Car {
    var mark: String
    var year: Int
    var bootVolumeTotal: Int
    var engin: workEngin
    var window: openWindow
    var valueBoot: Int
    mutating func change(cargo: emptyBoot) {
        switch cargo {
        case .loading(var loadingValue) where loadingValue > bootVolumeTotal || loadingValue > bootVolumeTotal - valueBoot:
            print("Будет перегруз, уменьши груз, бро.")
        case .loading(var loadingValue) where valueBoot == 0 || valueBoot != 0:
            valueBoot = loadingValue
            self.engin = .stop
            self.window = .open
        default:
            break
        }
    }
    
}

var carBMW = Car(mark: "BMW", year: 2019, bootVolumeTotal: 100, engin: .start, window: .close, valueBoot: 0)
carBMW.change(cargo: .loading(loadingValue: 80))
print("Значения свойств первого экземпляра: \nМарка — \(carBMW.mark)\nГод выпуска — \(carBMW.year)\nОбщий объем багажника — \(carBMW.bootVolumeTotal)\nДвигатель в состоянии — \(carBMW.engin.rawValue)\nОкна в состоянии — \(carBMW.window.rawValue)\nЗаполненость багажника — \(carBMW.valueBoot)")

var carPorshe = Car(mark: "Porshe", year: 2020, bootVolumeTotal: 80, engin: .start, window: .close, valueBoot: 0)
carPorshe.change(cargo: .loading(loadingValue: 50))
print("\nЗначения свойств второго экземпляра: \nМарка — \(carPorshe.mark)\nГод выпуска — \(carPorshe.year)\nОбщий объем багажника — \(carPorshe.bootVolumeTotal)\nДвигатель в состоянии — \(carPorshe.engin.rawValue)\nОкна в состоянии — \(carPorshe.window.rawValue)\nЗаполненость багажника — \(carPorshe.valueBoot)")



struct Truck {
    var mark: String
    var year: Int
    var bootVolumeTotal: Int
    var engin: workEngin
    var window: openWindow
    var valueBoot: Int
    mutating func changeTruck(cargo: emptyBoot) {
        switch cargo {
        case .loading(var loadingValue) where loadingValue > bootVolumeTotal || loadingValue > bootVolumeTotal - valueBoot:
            print("Будет перегруз, уменьши груз, бро.")
        case .loading(var loadingValue) where valueBoot == 0 || valueBoot != 0:
            valueBoot += loadingValue
            self.engin = .stop
            self.window = .open
        default:
            break
        }
    }
    
}

var carKamaz = Truck(mark: "Камаз", year: 1990, bootVolumeTotal: 5000000, engin: .start, window: .close, valueBoot: 1000000)
carKamaz.changeTruck(cargo: .loading(loadingValue: 3500000))
print("\nЗначения свойств третьего экземпляра: \nМарка — \(carKamaz.mark)\nГод выпуска — \(carKamaz.year)\nОбщий объем багажника — \(carKamaz.bootVolumeTotal)\nДвигатель в состоянии — \(carKamaz.engin.rawValue)\nОкна в состоянии — \(carKamaz.window.rawValue)\nЗаполненость багажника — \(carKamaz.valueBoot)")

var carPolutorka = Truck(mark: "Полуторка", year: 1932, bootVolumeTotal: 100000000, engin: .start, window: .close, valueBoot: 2000000)
carPolutorka.changeTruck(cargo: .loading(loadingValue: 13500000))
print("\nЗначения свойств третьего экземпляра: \nМарка — \(carPolutorka.mark)\nГод выпуска — \(carPolutorka.year)\nОбщий объем багажника — \(carPolutorka.bootVolumeTotal)\nДвигатель в состоянии — \(carPolutorka.engin.rawValue)\nОкна в состоянии — \(carPolutorka.window.rawValue)\nЗаполненость багажника — \(carPolutorka.valueBoot)")

