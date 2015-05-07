//
//  Engine.swift
//  slisp
//
//  Created by Sean Levin on 5/4/15.
//  Copyright (c) 2015 Sean Levin. All rights reserved.
//

import Foundation

public enum Atom {
    case StringAtom(String)
    case IntAtom(Int)
}

public func runIt(code: String) -> Int {
    return 3
}

public func readFun(code: String) -> [String] {
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

public func eval(sexp: [Atom]) -> Atom {
    return Atom.IntAtom(1)
}