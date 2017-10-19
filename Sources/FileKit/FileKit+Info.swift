import Foundation

// Show file information

extension FileKit {
    
    /// Get current working directory.
    /// - returns: Return current directory path as a string.
    public func pwd() -> String {
        let path = FileKit.fm.currentDirectoryPath
        return path
    }

    /// Get home directory.
    /// - returns: Return home directory path as a string.
    public func home() -> String {
        let path = NSHomeDirectory()
        return path
    }
}



// Check file or directory existence
extension FileKit {
    
    /// Check existence of file
    /// - returns: Return true if designated file exists.
    public var isFile: Bool {
        return FileKit.fm.fileExists(atPath: self.path)
    }

    /// Check existence of directory
    /// - returns: Return true if designated directory exists.
    public var isDir: Bool {
        return FileKit.fm.fileExists(atPath: self.path)
    }
}
