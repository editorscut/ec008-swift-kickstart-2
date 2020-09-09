struct SubscriptOutOfBoundsError: Error {
}

extension Forecast {
    static func number(_ index: Int) throws -> String {
      if !range.contains(index){
            throw SubscriptOutOfBoundsError()
        }
        return Forecast()[index]
    }
}
