//
//  Errors.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation


enum FileableError: Error {
    case NotExists
    case AleardyExists
    case PermissionError
    case TypeConvertionError
    case Unkown(String)
}
