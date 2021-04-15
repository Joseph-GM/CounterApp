//
//  Counter.swift
//  CounterApp
//
//  Created by Joseph Kim on 2021/04/14.
//

import Foundation

@objc(Counter)
class Counter: NSObject {
  
  @objc
    func constantsToExport() -> [AnyHashable : Any]! {
      return [
        "number": 123.9,
        "string": "foo",
        "boolean": true,
        "array": [1, 22.2, "33"],
        "object": ["a":1, "b":2]
      ]
    }

  }
