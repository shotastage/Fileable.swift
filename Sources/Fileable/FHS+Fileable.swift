//
//  Linux+Fileable.swift
//  Fileable
//
//  Created by Shota Shimazu on 2017/10/25.
//  Copyright © 2017-2018 Shota Shimazu. All rights reserved.
//

import Foundation

#if os(Linux)
public enum UnixFS {
    
    case root
    case bin
    case boot
    case device
    case etc
    case home
    case lib
    case media
    case mnt
    case opt
    case proc
    case rootUser
    case tmp
    case usr
    
    var path: String! {
        switch self {
        case .root:
            return "/"
        case .bin:
            return "/bin/"
        case .boot:
            return "/boot/"
        case .device:
            return "/dev/"
        case .etc:
            return "/etc/"
        case .home:
            return "/home/"
        case .lib:
            return "/lib/"
        case .media:
            return "/media/"
        case .mnt:
            return "/mnt/"
        case .opt:
            return "/opt/"
        case .proc:
            return "/proc/"
        case .rootUser:
            return "/rootUser/"
        case .tmp:
            return "/tmp/"
        case .usr:
            return "/usr/"
        }
    }
}
#endif
