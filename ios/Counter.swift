//
//  Counter.swift
//  CounterApp
//
//  Created by Joseph Kim on 2021/04/14.
//

import Foundation

@objc(Counter)
class Counter: RCTEventEmitter {
  
  private var count = 0
  
  @objc
  func increment() {
    count += 1
    print("**********IN SWIFT************")
    print("IN Swift : Count is \(count)")
    
    sendEvent(withName: "onIncrement", body: ["count": count])
  }
  
  override func supportedEvents() -> [String]! {
    return ["onIncrement"]
  }
    
  
  @objc
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([
      count,
      123.9,
      "third argument",
      [1,2.2,"3"],
      ["a": 1, "b": 2]
    ])
  }
  
  @objc
  func decrement(
    _ resolve: RCTPromiseResolveBlock,
    rejecter reject: RCTPromiseRejectBlock
  ) -> Void {
    
    if (count == 0 ) {
      let error = NSError(domain: "", code: 200, userInfo: nil)
      reject("E_COUNT", "count cannot be negative",error)
    } else {
      count -= 1
      resolve("count was decremented")
    }
    
  }
  
  
  override func constantsToExport() -> [AnyHashable : Any]! {
      return [
        "number": 123.9,
        "string": "foo",
        "boolean": true,
        "array": [1, 22.2, "33"],
        "object": ["a":1, "b":2]
      ]
    }
  

  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

  }
