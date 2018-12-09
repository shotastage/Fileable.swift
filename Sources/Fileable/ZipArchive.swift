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



class FileableZipArchiver {
    
    // TODO: Complete implementing unzip method
    func unzipFile(file: String, password: String?) throws {
        
        // Unzip set up
        var ret: Int32 = 0
        var crc_ret: Int32 = 0
        let bufferSize: UInt32 = 4096
        var buffer = Array<CUnsignedChar>(repeating: 0, count: Int(bufferSize))
        
        
        /// Open Zip file
        let unzipTarget = unzOpen64(file)
        
        /// Procedure
        if unzGoToFirstFile(unzipTarget) != UNZ_OK {
            throw FileableError.ZipExtractFailure
        }
        
        
        
        /// Close Zip file
        defer {
            unzClose(unzipTarget)
        }
    }
    
    
    // TODO: Complete implementing zip method
    func zipFile(file: String, password: String?, level: ZipCompressionLevel) throws {
        throw FileableError.ZipCompressFailure
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
