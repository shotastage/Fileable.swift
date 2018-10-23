//
//  Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on Oct 25, 2017.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation

open class Fileable {
    
    // Path
    var path: String
    
    // Foundational File Manager
    static var fm = FileManager.default
    
    
    // Initializers
    public init() {
        self.path = Fileable.pwd
    }
    
    public init(_ path: String) {
        self.path = path
    }
}

