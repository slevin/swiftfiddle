//
//  slispTests.swift
//  slispTests
//
//  Created by Sean Levin on 5/4/15.
//  Copyright (c) 2015 Sean Levin. All rights reserved.
//

import Cocoa
import XCTest
import slisp

class slispTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOnePlusTwo() {
        let r = runIt("(+ 1 2)")
        XCTAssert(r == 3)
    }

    func testIntoArray() {
        let a = intoArray("(+ 1 2)")
        XCTAssert(a == ["+", "1", "2"])
    }
}
