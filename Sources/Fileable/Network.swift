//
//  Network.swift
//  Fileable
//
//  Created by Shota Shimazu on 2019/01/13.
//  Copyright © 2017-2020 Shota Shimazu. All rights reserved.
//

import Foundation


#if DEBUG
open class Downloader {
    
    public static let shared = Downloader()
    
    private init() { }
    
    func save(to: String) {
        
    }
}
#endif
