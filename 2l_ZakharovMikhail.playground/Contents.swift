import UIKit

// 1. Написать функцию, которая определяет, четное число или нет.

func evenOrNot(_ number: Int) {
    if number % 2 == 0 {
        print("Число четное — ура")
    } else {
        print("Число не четное — =(")
    }
}

var number = 8
evenOrNot(number)


// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func balans(_ number1: Int) {
    if number1 % 3 == 0 {
        print("Число \(number1), делиться на 3 без остатка")
    } else {
        print("Число \(number1), делиться на 3 с остатком")
    }
}

var number1 = 9
balans(number1)


// 3. Создать возрастающий массив из 100 чисел.

func arrayFillIn() {
    for i in 1...100 {
        array.append(i)
    }
}

var array = [Int] ()
arrayFillIn()
print(array)


// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

func arrayFillIn1() {
    for i in 1...100 {
        array1.append(i)
    }
}

var array1 = [Int] ()
arrayFillIn1()

// Решение №1

for t in (0..<array1.count).reversed() {
    if array1[t] % 2 == 0 || array1[t] % 3 != 0 {
        array1.remove(at: t)
    }
}
print(array1)

// Решение №2

/*array1.removeAll(where: {$0 % 2 == 0 || $0 % 3 != 0})
print(array1)*/

// Решение №3

/*for (_, value) in array1.enumerated() {
    if value % 2 == 0 || value % 3 != 0 {
        array1.remove(at: array1.firstIndex(of: value)!)
    }
}
print(array1)*/


// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibonacci(_ nn: Int) -> [Double] {
    var fibonacciArray: [Double] = [1, 1]
    for rr in 2...nn + 1 {
        fibonacciArray.append(fibonacciArray[rr - 1] + fibonacciArray[rr - 2])
    }
    return fibonacciArray
}
print(fibonacci(100))

