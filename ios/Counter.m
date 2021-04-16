//
//  Counter.m
//  CounterApp
//
//  Created by Joseph Kim on 2021/04/14.
//

#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

// @interface RCT_EXTERN_MODULE(Counter, NSObject)
@interface RCT_EXTERN_MODULE(Counter, RCTEventEmitter)

RCT_EXTERN_METHOD(increment)
RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(
    decrement: (RCTPromiseResolveBlock)resolve
    rejecter: (RCTPromiseRejectBlock)reject
)
@end
