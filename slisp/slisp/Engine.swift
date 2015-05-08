//
//  Engine.swift
//  slisp
//
//  Created by Sean Levin on 5/4/15.
//  Copyright (c) 2015 Sean Levin. All rights reserved.
//

import Foundation

public enum Atom : Equatable {
    case StringAtom(String)
    case IntAtom(Int)
}

public func ==(a: Atom, b: Atom) -> Bool {
    switch (a, b) {
    case (.IntAtom(let a), .IntAtom(let b)) where a == b: return true
    default: return false
    }
    return false
}

public func !=(a: Atom, b:Atom) -> Bool {
    return !(a == b);
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