//
//  Utils+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017 Labbiness. All rights reserved.
//

import Foundation

// Utils
extension Fileable {
    
    public func touch(_ path: String) throws {
        let empty = ""
        do {
            try empty.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("failed to write: \(error)")
        }
    }
}
