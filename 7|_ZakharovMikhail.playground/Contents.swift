import UIKit

enum possibleError: Error {
    case notManey
    case notBook
    case needMooreManey
    case allBookSell

}

struct Book {
    var price: Int
    var count: Int
}

class BookShop {
    var prospectManey = 0
    var needManey = 0
    var bookList = [
        "book1" : Book(price: 10, count: 5),
        "book2" : Book(price: 15, count: 2),
        "book3" : Book(price: 20, count: 0)
    ]
    
    func addProspectManey(addManey: Int) throws {
        guard addManey > 0  else {
            throw possibleError.notManey
        }
        prospectManey += addManey
    }
    
    func buyBook(nameBook: String) throws {
        guard var sellBook = bookList[nameBook] else {
            throw possibleError.notBook
        }
        guard sellBook.count > 0 else {
            throw possibleError.allBookSell
        }
        guard sellBook.price < prospectManey else {
            needManey = sellBook.price - prospectManey
            throw possibleError.needMooreManey
        }
        
        prospectManey -= sellBook.price
        sellBook.count -= 1
        bookList[nameBook] = sellBook
        print("Поздравляем с покупокй \(nameBook)")
    }
    
}

var Piter = BookShop()

do {
    try Piter.addProspectManey(addManey: 20)
} catch possibleError.notManey {
    print("Вносить 0 нельзя")
}

do {
    try Piter.buyBook(nameBook: "book2")
} catch possibleError.notBook {
    print("Такой книги у нас нет. Посмотрите на ОЗОН.ру")
} catch possibleError.allBookSell {
print("Все книги проданы. Приходите завтра")
} catch possibleError.needMooreManey {
    print("Для покупки не хватает \(Piter.needManey)")
}

