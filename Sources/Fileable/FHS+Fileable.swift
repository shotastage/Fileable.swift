//
//  Linux+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation

#if os(Linux)
public enum FHS {
    
    case root
    case setting
    case optional
    
    var path: String! {
        switch self {
        case .root:
            return "/"
        case .setting:
            return "/etc/"
        case .optional:
            return "/opt/"
        }
    }
}
#endif
