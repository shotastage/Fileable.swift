//
//  ZipArchive.swift
//  Fileable
//
//  Created by Shota Shimazu on 2018/12/09.
//

import Foundation
import MiniZip




public enum ZipCompressionLevel {
    case NoCompression
    case BestSpeed
    case Default
    case BestCompression
    
    
    var minizipLevel: Int32 {
        switch self {
        case .NoCompression:
            return Z_NO_COMPRESSION
            
        case .BestSpeed:
            return Z_BEST_SPEED
        
        case .Default:
            return Z_DEFAULT_COMPRESSION
        
        case .BestCompression:
            return Z_BEST_COMPRESSION
        }
    }
    
}

extension Path {
    
    func unzip(password: String? = nil) throws {
        // TODO: Implement unzip
    }
    
    
    func compress(password: String? = nil) throws {
        // TODO: Implement zipping
    }
}
