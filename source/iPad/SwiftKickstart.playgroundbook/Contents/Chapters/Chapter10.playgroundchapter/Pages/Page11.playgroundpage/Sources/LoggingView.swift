public fileprivate(set) var log = ""
fileprivate var count = 1

public func updateLog(with status: String) {
    log += "(\(count)) " + status + "\n"
    count += 1
}

open class LoggingView {
    public let name: String
    
    public init(name: String) {
        self.name = name
        updateLog(with: "Created: \(name)")
    }
    
    deinit {
        updateLog(with: "Destroyed: \(name)")
    }
}
