//
//  iOSFileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2018/12/09.
//  Copyright © 2017-2020 Shota Shimazu. All rights reserved.
//

import Foundation



#if os(iOS) || os(watchOS) || os(tvOS)

open class FileableIOS {
    
    public static let shared = FileableIOS()
    
    private init() { }
    
    public func getBundle(file: String) -> String? {
        
        let path = Bundle.main.path(forResource: file.components(separatedBy: ".")[0] , ofType: file.components(separatedBy: ".")[1])
        
        return path
    }
}


public enum IOSDirs {
    
    /// .document returns iOS Documents directory
    case document
    case inbox
    case library
    case cache
    case tmp
    
    
    /// path propaty returns directory path as String type
    @available(iOS 10.0, *)
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
