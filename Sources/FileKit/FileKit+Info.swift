import Foundation

// Show file information
extension FileKit {
    public func pwd() -> String {
        let path = FileKit.fm.currentDirectoryPath
        return path
    }

    public func home() -> String {
        let path = NSHomeDirectory()
        return path
    }
}



// Check file or directory existence
extension FileKit {
    public var isFile: Bool {
        return FileKit.fm.fileExists(atPath: self.path)
    }

    public var isDir: Bool {
        return FileKit.fm.fileExists(atPath: self.path)
    }
}
