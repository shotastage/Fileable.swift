//
//  Utilities.swift
//  Fileable
//
//  Created by Shota Shimazu on 2018/12/09.
//  Copyright © 2017-2020 Shota Shimazu. All rights reserved.
//

import Foundation


extension Path {
    
    //
    // URL Converter
    //
    public static func toURL(string: String) -> URL {
        return URL(fileURLWithPath: string)
    }
    
    public static func toString(fileURL: URL) throws -> String {
        
        let stringURL: String
        
        do {
            try stringURL = String(contentsOf: fileURL)
        }
        catch {
            throw FileableError.TypeConvertionError
        }
        
        return stringURL
    }
    
    
    /// Change default slash separator
    func changeDefaultSeparator(for newSeparator: String) {
        self.separator = newSeparator
    }
    
    
    /// Change defualt file manager instance
    func changeFileManagerBackend(new fmInstance: FileManager) {
        Path.fm = fmInstance
    }
}
