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
    
    // Foundational File Manager
    static var fm = FileManager.default
    
    
    // Initializers
    public init() {
        self.path = Path.pwd
    }
    
    public init(_ path: String) {
        if path == "~" {
            self.path = Path.pwd
        } else {
            self.path = path
        }
    }
}

