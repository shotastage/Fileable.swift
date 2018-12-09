//
//  PathTypeCasting.swift
//  Fileable
//
//  Created by Shota Shimazu on 2018/12/10.
//

import XCTest
@testable import Fileable


class PathTypeCastingTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testStringPathType() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path: String = "~"
        
        let fm = FileManager.default
        
        
        XCTAssertTrue(Path(path).path == fm.currentDirectoryPath)
    }
    
    
    func testURLPathType() {
        
        let fm = FileManager.default

        let path: URL = URL(fileURLWithPath: fm.currentDirectoryPath, isDirectory: true)
        
        XCTAssertTrue(Path(path).path == fm.currentDirectoryPath)
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        
        self.measure { }
    }
}
