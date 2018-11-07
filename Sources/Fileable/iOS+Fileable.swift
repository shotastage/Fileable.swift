//
//  iOS+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation


#if os(iOS) || os(watchOS) || os(tvOS)
    
extension Path {
        
    ///
    /// Deprecated methods
    ///
    @available(*, unavailable, renamed: "iOSFileSystem.document.path")
    static func appDocument() -> String {
        fatalError("appDocument is deprecated!")
    }
        
    @available(*, unavailable, renamed: "iOSFileSystem.cache.path")
    static func appCache() -> String {
        fatalError("appCache is deprecated!")
    }
        
        
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
}



public enum iOS {
    case document
    case inbox
    case library
    case cache
    case tmp
    
    var path: String! {
        switch self {
            
        case .document:
            return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        case .inbox:
            return ""
        case .library:
            return ""
        case .cache:
            return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true)[0]
        case .tmp:
            return ""
        }
    }
}

#endif
