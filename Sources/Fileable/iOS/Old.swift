//
//  Old.swift
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

}

#endif
