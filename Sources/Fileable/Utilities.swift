//
//  Utilities.swift
//  Fileable
//
//  Created by Shota Shimazu on 2018/12/09.
//

import Foundation


extension Path {
    
    /// Change default slash separator
    func changeDefaultSeparator(for newSeparator: String) {
        self.separator = newSeparator
    }
    
    
    /// Change defualt file manager instance
    func changeFileManagerBackend(new fmInstance: FileManager) {
        Path.fm = fmInstance
    }
}
