//
//  Engine.swift
//  slisp
//
//  Created by Sean Levin on 5/4/15.
//  Copyright (c) 2015 Sean Levin. All rights reserved.
//

import Foundation

public func runIt(code: String) -> Int {
    return 3
}

public func intoArray(code: String) -> [String] {
    /*
    for each char if ( new array
    if " " add string to list
    if ) return array
    otherwise add string to accumulator
    */
    var res:[String] = [String]()
    var current = ""
    for c in code {
        if (c == "(") {
            res = [String]()
        } else if (c == " ") {
            res.append(current)
            current = ""
        } else if (c == ")") {
            res.append(current)
            break;
        } else {
            current.append(c)
        }
    }
    return res
}