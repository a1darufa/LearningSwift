import UIKit

extension Int {
    var isPositive: Bool {
        self >= 0
    }
    
    var isNegative: Bool {
        !isPositive
    }
    
    var isBool: Bool {
        self != 0
    }
    
    var length: Int {
        String(abs(self)).count
    }
    
    subscript(index: Int) -> Int {
        get {
            guard index < self.length else {
                print("Error, input number from 0 to \(self.length - 1)")
                return 0
            }
            let number = String(abs(self))
            let index = String(self).index(number.startIndex, offsetBy: self.length - index - 1)
            return Int(number[index...index])!
        }
        set{
            var temp = String(self)
//            temp = temp.prefix(index - 1) + newValue + temp.
        }
    }
}

let a = -4578
a.isPositive
a.isBool
a.length
a[3]

extension String {
    subscript(start: Int, length: Int) -> String {
        let start = self.index(self.startIndex, offsetBy: start)
        let end = self.index(start, offsetBy: length)
        return String(self[start...end])
    }
    
    subscript(range: Range<Int>) -> String {
        get {
            let start = self.index(startIndex, offsetBy: range.startIndex)
            let end = self.index(startIndex, offsetBy: range.count)
            return String(self[start...end])
        }
        set {
            let start = self.index(startIndex, offsetBy: range.startIndex)
            let end = self.index(startIndex, offsetBy: range.count)
            self.replaceSubrange(start..<end, with: newValue)
        }
    }
    
    func trunc(length: Int, trailing: String = "…") -> String {
        (self.count > length) ? self.prefix(length) + trailing : self
    }
}

var str = "Hello, world!"
str[1..<4]
str[1..<5] = "RRR"
str
str.trunc(length: 5)
