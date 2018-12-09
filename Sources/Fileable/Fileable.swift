//
//  Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on Oct 25, 2017.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation

open class Path {
    
    // Path
    var path: String
    
    // Separator
    public var separator: String = "/"
    
    // Foundational File Manager
    static var fm = FileManager.default
    
    // Services
    #if os(iOS) || os(watchOS) || os(tvOS)
    static let ios = FileableIOS.shared
    #endif
    
    
    // Initializers
    public required init() {
        self.path = Path.pwd
    }
    
    public init<T>(_ path: T) {
        
        let castedPath: String
        
        /// Compatible for both String and URL type
        if let pathURL: URL = path as? URL {
            castedPath = pathURL.path
        } else {
            castedPath = path as! String
        }
        
        
        self.path = castedPath
        
        if castedPath == "~" {
            if let range = castedPath.range(of: "~") {
                self.path.replaceSubrange(range, with: Path.home)
            }
        }
    }
}
