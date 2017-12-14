//
//  iOS+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017 Shota Shimazu. All rights reserved.
//

import Foundation


#if os(iOS) || os(watchOS) || os(tvOS)
    
    extension Fileable {
        
        static func appDocument() -> String {
            return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        }
        
        static func appCache() -> String {
            return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true)[0]
        }
        
        
        //
        // URL Converter
        //
        static func toURL(string: String) -> URL {
            return URL(fileURLWithPath: string)
        }
        
        static func toString(fileURL: URL) throws -> String {
            
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
    
#endif
