//
//  Info.swift
//  FileableTests
//
//  Created by Shota Shimazu on 2018/08/27.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import XCTest
@testable import Fileable


class Info: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCaseIsDir() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let path: String = Fileable.home
        
        XCTAssertTrue(Fileable(path).isDir)
    }
    
    func testCaseIsFile() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let file: String = Fileable.home
        
        XCTAssertFalse(Fileable(file).isFile)
    }

    func testCaseLS() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let file: String = Fileable.home
        
        let fileList = Fileable(file).ls!
        
        NSLog(String(describing: fileList))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        
        let path: String = Fileable.home
        
        self.measure {
            if Fileable(path).isDir {
                NSLog(path, "is", "directory", ".")
            }
        }
    }

}
