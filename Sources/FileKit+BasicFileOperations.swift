
extension FileKit {

    public func cd(_ path: String) throws {
        if !FileKit.fm.changeCurrentDirectoryPath(path) {
            if !FileKit.fm.fileExists(atPath: path) {
                throw FileError.NotExists
            } else {
                throw FileError.Unkown("Failed to change current direcotry.")
            }
        }
    }

    public func mkdir(_ path: String) throws {
        try FileKit.fm.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
    }

    public func rm(_ target: String) throws {
        try FileKit.fm.removeItem(atPath: target)
    }

    public func mv(from fromPath: String, to toPath: String) throws {
        try FileKit.fm.moveItem(atPath: fromPath, toPath: toPath)
    }
}
