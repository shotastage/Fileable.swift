//
//  iOSDirs.swift
//  Fileable
//
//  Created by Shota Shimazu on 2018/11/14.
//

import XCTest
@testable import Fileable


class IOSDirs: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIOSDir() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let documentDirectory: String = iOSDir.document.path
        let libraryDirectory: String = iOSDir.library.path
        
        NSLog("LOG: ")
        NSLog(documentDirectory)
        NSLog(libraryDirectory)
        // XCTAssertEqual(current, moved)
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
