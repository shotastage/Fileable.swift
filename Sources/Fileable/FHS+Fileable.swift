//
//  Linux+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation


public typealias UNIXfs = FHS

public enum FHS {
    
    case root
    case settings
    case optional
    
    var path: String! {
        switch self {
        case .root:
            return "/"
        case .settings:
            return "/etc/"
        case .optional:
            return ""
        }
    }
}
