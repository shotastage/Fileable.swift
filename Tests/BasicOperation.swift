//
//  BasicOperation.swift
//  FileableTests
//
//  Created by Shota Shimazu on 2018/08/27.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import XCTest
@testable import Fileable


class BasicOperation: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCd() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let current: String = Path.pwd
        
        try? Path.cd(Path.pwd)
        
        let moved: String = Path.pwd
        
        XCTAssertEqual(current, moved)
    }
    
    
    func testPwd() {
        let current: String = Path.pwd
        
        Path.pwd = Path.pwd
        
        let moved: String = Path.pwd
        
        XCTAssertEqual(current, moved)
    }

    
    func testMkdir() {
        try? Path.mkdir("TEST_DIR")
    
        XCTAssertTrue(Path(Path.pwd + "/TEST_DIR").isDir)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
