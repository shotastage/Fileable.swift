//
//  Info+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017 Labbiness. All rights reserved.
//

import Foundation


// Show file information

extension Fileable {
    
    /// Get current working directory.
    /// - returns: Return current directory path as a string.
    public func pwd() -> String {
        let path = Fileable.fm.currentDirectoryPath
        return path
    }
    
    /// Get home directory.
    /// - returns: Return home directory path as a string.
    public func home() -> String {
        let path = NSHomeDirectory()
        return path
    }
}



// Check file or directory existence
extension Fileable {
    
    /// Check existence of file
    /// - returns: Return true if designated file exists.
    public var isFile: Bool {
        return Fileable.fm.fileExists(atPath: self.path)
    }
    
    /// Check existence of directory
    /// - returns: Return true if designated directory exists.
    public var isDir: Bool {
        return Fileable.fm.fileExists(atPath: self.path)
    }
}
