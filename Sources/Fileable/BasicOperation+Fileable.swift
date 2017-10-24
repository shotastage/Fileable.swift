//
//  BasicOperation+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017 Labbiness. All rights reserved.
//

import Foundation

extension Fileable {
    
    public func cd(_ path: String) throws {
        if !Fileable.fm.changeCurrentDirectoryPath(path) {
            if !Fileable.fm.fileExists(atPath: path) {
                throw FileableError.NotExists
            } else {
                throw FileableError.Unkown("Failed to change current direcotry.")
            }
        }
    }
    
    public func mkdir(_ path: String) throws {
        try Fileable.fm.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
    }
    
    public func rm(_ target: String) throws {
        try Fileable.fm.removeItem(atPath: target)
    }
    
    public func mv(from fromPath: String, to toPath: String) throws {
        try Fileable.fm.moveItem(atPath: fromPath, toPath: toPath)
    }
}
