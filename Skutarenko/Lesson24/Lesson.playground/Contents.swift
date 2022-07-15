import UIKit

extension Int {
    var isEven: Bool {
        self % 2 == 0
    }
    
    var isOdd: Bool {
        !isEven
    }
    
    enum EvenOrOdd {
        case Even, Odd
    }
    
    var evenOrOdd: EvenOrOdd {
        isEven ? .Even : .Odd
    }
    
    func pow(value: Int) -> Int {
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    
    mutating func powTo(value: Int) {
        self = pow(value: value)
    }
    
    var binaryString: String {
        var result = ""
        for i in 0..<8 {
            result = String(self & (1 << i) > 0) + result
        }
        return result
    }
}

extension String {
    init(_ value: Bool) {
        self.init(value ? 1 : 0)
    }
    
    subscript(start: Int, length: Int) -> String {
        let start = self.index(self.startIndex, offsetBy: start)
        let end = self.index(start, offsetBy: length)
        return String(self[start...end])
    }
    
}

extension Int.EvenOrOdd {
    var string: String {
        switch self {
        case .Even: return "even"
        case .Odd: return "odd"
        }
    }
}

let a = 5

a.evenOrOdd.string
a.binaryString

let s = "Hello, World!"
s[2, 5]


