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
    
    
    // Initializers
    public init() {
        self.path = Path.pwd
    }
    
    public init(_ path: String) {
        self.path = path
        
        if path == "~" {
            if let range = path.range(of: "~") {
                self.path.replaceSubrange(range, with: Path.home)
            }
        } else {
            self.path = path
        }
    }
}
