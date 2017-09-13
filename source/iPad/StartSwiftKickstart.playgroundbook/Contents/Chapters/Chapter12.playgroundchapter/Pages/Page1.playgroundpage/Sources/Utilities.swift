import PlaygroundSupport
import Foundation



public func setUp() {
    PlaygroundPage.current.needsIndefiniteExecution = true
    URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)
    
}

public func shutDown() {
    PlaygroundPage.current.finishExecution()
}

