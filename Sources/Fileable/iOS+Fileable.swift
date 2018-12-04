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
    @available(*, unavailable, renamed: "IOSDirs.document.path")
    static func appDocument() -> String {
        fatalError("appDocument is deprecated!")
    }
        
    @available(*, unavailable, renamed: "IOSDirs.cache.path")
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



/// iOSDir enum is list of iOS application directories
public enum IOSDirs {
    
    /// .document returns iOS Documents directory
    case document
    case inbox
    case library
    case cache
    case tmp
    
    
    /// path propaty returns directory path as String type
    var path: String! {
        switch self {
        
        case .document:
            return Path.fm.urls(for: .documentDirectory, in: .userDomainMask)[0].path
        case .inbox:
            return Path.fm.urls(for: .documentDirectory, in: .userDomainMask)[0].path + "inbox/"
        case .library:
            return Path.fm.urls(for: .libraryDirectory, in: .userDomainMask)[0].path
        case .cache:
            return Path.fm.urls(for: .cachesDirectory, in: .userDomainMask)[0].path
        case .tmp:
            return Path.fm.temporaryDirectory.path
        }
    }
}

#endif
