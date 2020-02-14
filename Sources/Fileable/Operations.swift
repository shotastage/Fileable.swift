//
//  BasicOperation+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017-2020 Shota Shimazu. All rights reserved.
//

import Foundation

extension Path {
    
    // TODO: Implement cd clousure like Python with statement
    public static func cd(_ path: String) throws {
        if !Path.fm.changeCurrentDirectoryPath(path) {
            if !Path.fm.fileExists(atPath: path) {
                throw FileableError.DirectoryDoesNotExists
            } else {
                throw FileableError.Unkown("Failed to change current direcotry.")
            }
        }
    }

    public static func mkdir(_ paths: String..., ignoreError: Bool = true) throws {
        
        for path in paths {
            try Path.fm.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
        }
        
    }
    
    public func rm() throws {
        try Path.fm.removeItem(atPath: self.path)
    }
    
    public func mv(to toPath: String) throws {
        try Path.fm.moveItem(atPath: self.path, toPath: toPath)
    }

    public func chmod(mode: Int) throws {
        fatalError("This function is not implemented now.")
    }

    public static func touch(at: String) throws {
        let empty = ""
        do {
            try empty.write(to: URL(string: at)!, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("failed to write: \(error)")
        }
    }
}
