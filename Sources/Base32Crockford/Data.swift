//
//  Data.swift
//  Base32Crockford
//
//  Created by Leo Dion on 11/6/18.
//

import Foundation

public typealias ByteCollection = [UInt8]

extension Data {
  public static func random (withNumberOfBytes count: Int) -> Data {
    return Data(bytes: ByteCollection.random(withCount: count))
  }
  
  public static func bytesRequired(forUniqueCountOf count: Int) -> Int {
    return Int(ceil(log(Double(count))/log(256.0)))
  }
  
  public static func uniqueIdentifier (forMinimumCount count: Int) -> Data {
    return self.random(withNumberOfBytes: self.bytesRequired(forUniqueCountOf: count))
  }
}