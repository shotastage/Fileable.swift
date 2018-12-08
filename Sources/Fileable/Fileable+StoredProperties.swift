//
//  Info+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation


// Show file information

extension Path {
    
    /// Get current working directory.
    /// - returns: Return current directory path as a string.
    public static var pwd: String {
        get {
            let path = Path.fm.currentDirectoryPath
            return path
        }
        
        set {
            try! Path.cd(newValue)
        }
    }
    
    /// Alias of Path.pwd
    public static var current: String = Path.pwd
    
    /// Get home directory.
    /// - returns: Return home directory path as a string.
    public static var home: String {
        let path = NSHomeDirectory()
        return path
    }
    
    /// List contents of specific directory
    /// - returns: path array
    public var ls: [String]? {

        var path: [String]? = []
        
        do {
            try path = Path.fm.contentsOfDirectory(atPath: self.path)
            
        } catch {
            path = nil
        }
        
        return path
    }
}


// Check and Change file or directory permission
extension Path {
    
    public var permission: Int {
        get {
            fatalError("This stored property is not implemented now!")
        }
        
        set {
            fatalError("This stored property is not implemented now!")
        }
    }
}



// Check file or directory existence
extension Path {
    
    /// Check existence of file
    /// - returns: Return true if designated file exists.
    public var isFile: Bool {
        
        
        /// MARK: Judge if given path is firectory
        var isDirectory: ObjCBool = false
        
        var result = Path.fm.fileExists(atPath: self.path, isDirectory: &isDirectory)
        
        /// MARK: If given path is directory, then toggling boolean. It means given path is file
        result.toggle()

        return result
    }
    
    /// Check existence of directory
    /// - returns: Return true if designated directory exists.
    public var isDir: Bool {
        
        var isDirectory: ObjCBool = false

        return Path.fm.fileExists(atPath: self.path, isDirectory: &isDirectory)
    }
    
    public var `extension`: String {
        
        let fileName: String = String(self.path.split(separator: "/").last!)
        
        return String(fileName.split(separator: ".").last!)
    }
}


// Path type
extension Path {
    
    /// Return whether path is absolute
    public var isAbsolute: Bool {
        return self.path.hasPrefix(Path.separator)
    }
    
    /// Return whether path is relative
    public var isRelative: Bool {
        return !isAbsolute
    }
}
