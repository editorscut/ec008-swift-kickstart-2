import Foundation

struct DollarFormatter {
    private let formatter = NumberFormatter()
    init() {
        formatter.alwaysShowsDecimalSeparator = true
        formatter.minimumIntegerDigits = 1
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
    }
    
    func format(_ dollar: USDollar) -> String {
        let dollarNumber = NSNumber(value: dollar.value)
        return "$" + (formatter.string(from: dollarNumber) ?? "0.00")
    }
}
