//
//  iOSDirs.swift
//  Fileable
//
//  Created by Shota Shimazu on 2018/11/14.
//

import XCTest
@testable import Fileable


class IOSDirsTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIOSDir() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let documentDirectory: String = IOSDirs.document.path
        let inboxDirectory: String = IOSDirs.inbox.path
        let libraryDirectory: String = IOSDirs.library.path
        let cacheDirectory: String = IOSDirs.cache.path
        let tmpDirectory: String = IOSDirs.tmp.path
        
        
        NSLog("LOG: \(documentDirectory)")
        NSLog("LOG: \(inboxDirectory)")
        NSLog("LOG: \(libraryDirectory)")
        NSLog("LOG: \(cacheDirectory)")
        NSLog("LOG: \(tmpDirectory)")

        
        XCTAssertTrue(documentDirectory.contains("Documents"))
        XCTAssertTrue(inboxDirectory.contains("Documentsinbox"))
        XCTAssertTrue(libraryDirectory.contains("Library"))
        XCTAssertTrue(cacheDirectory.contains("Library/Caches"))
        XCTAssertTrue(tmpDirectory.contains("tmp"))
    }
    
    
    func testGetBundleFile() {
        let path = Path.ios.getBundle(file: "")
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
