//
//  Fibonacci.swift
//  FibonacciApp
//
//  Created by Taylor Boren on 6/19/15.
//  Copyright (c) 2015 Taylor Boren. All rights reserved.
//

import Foundation

class FibonacciSequence {
    
    var includesZero: Bool
    var values: [UInt]
    
    init(maxNumber: UInt, includesZero: Bool) {
        var prev:UInt = 0,
        cur:UInt = 1,
        temp:UInt = 0 // assigned value in while loop
        values = []
        self.includesZero = includesZero
        if !includesZero{
            prev = 1
        }
        values = [prev, cur]
        while(cur <= maxNumber){
            temp = prev+cur
            values.append(temp)
            prev = cur
            cur = temp
        }
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) {
        var prev:UInt = 0,
        cur:UInt = 1,
        temp:UInt = 0,
        count:UInt = 2
        values = []
        self.includesZero = includesZero
        if !includesZero{
            prev = 1
        }
        values = [prev, cur]
        while(count < numberOfItemsInSequence){
            temp = prev+cur
            values.append(temp)
            prev = cur
            cur = temp
            ++count
        }
    }
}
