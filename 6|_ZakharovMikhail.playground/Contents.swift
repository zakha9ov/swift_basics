import UIKit

// 1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.

struct AueueArray<T> {
    var queue = [T]()

// 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

    mutating func filter(doFilter: (T) -> Bool)  {
        var newArray = [T]()
        for i in queue {
            if doFilter(i) {
                newArray.append(i)
            }
        }
        self.queue = newArray
    }

    mutating func sort(doNewFilter: (T, T) -> Bool ) {
        queue.sort(by: doNewFilter)
    }

    func printQueue() {
        print(queue)
    }
    
// 3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
    
    subscript(index: Int) -> [T]? {
        switch index{
        case 0: return queue
        default: return nil
        }
    }

}


var myQueue = AueueArray(queue: [1,2,6,7,49,35,9,22])
myQueue.printQueue()

myQueue.filter { $0 % 2 == 0}
myQueue.printQueue()

myQueue.sort {$0 > $1 }
myQueue.printQueue()

myQueue[0]  // -> [22, 6, 2]
myQueue[1]  // -> nil
