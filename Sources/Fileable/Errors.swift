//
//  Errors.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation


public enum FileableError: Error {
    
    /// Not Exists
    case DoesNotExists
    case FileDoesNotExists
    case DirectoryDoesNotExists
    
    /// File
    case MakeFileFail
    case DeleteFileFail
    
    /// Directory
    case MakeDirectoryFail
    case DeleteDirectoryFail
    
    /// Operations
    case MoveDirectoryFail
    case ChangeDirectoryFail
    case PermissionError
    case TypeConvertionError
    
    /// Previous
    case AleardyExists
    
    /// Default
    case Unkown(String)
}
