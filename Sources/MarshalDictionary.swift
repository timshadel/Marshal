//
//  M A R S H A L
//
//       ()
//       /\
//  ()--'  '--()
//    `.    .'
//     / .. \
//    ()'  '()
//
//


import Foundation


// MARK: - Types

public typealias MarshalDictionary = [String: Any]


// MARK: - Dictionary Extensions

extension Dictionary: MarshaledObject {
    public func optionalAny(for key: KeyType) -> Any? {
        guard let aKey = key as? Key else { return nil }
        return self[aKey]
    }
}

extension NSDictionary: ValueType { }

extension NSDictionary: MarshaledObject {
    public func optionalAny(for key: KeyType) -> Any? {
        return self[key]
    }
}
