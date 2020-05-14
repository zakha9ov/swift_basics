// 1. Решить квадратное уравнение.
import Darwin // нашел это, чтобы работала команда sqrt()

let a: Double = 3
let b: Double = -14
let c: Double = -5

let discriminant: Double = b*b - 4*a*c
if (discriminant > 0) {
    let firstRoot: Double = (-b + sqrt(discriminant)) / (2*a)
    let secondRoot: Double = (-b - sqrt(discriminant)) / (2*a)
    print("Первый корень = \(firstRoot)\nВторой корень = \(secondRoot)")
} else if (discriminant == 0) {
    let root: Double = (-b) / 2*a
    print("Корень = \(root)")
} else if (discriminant < 0) {
    print("Уравнение не имеет корней")
}


// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
let d: Double = 3
let e: Double = 5

let hypotenuse: Double = sqrt(sqrt(d) + sqrt(e))
let square: Double = 0.5 * d * e
let perimeter: Double = d + e + hypotenuse

print("Гипотенуза = \(hypotenuse)\nПлощадь = \(square)\nПериметр = \(perimeter)")


