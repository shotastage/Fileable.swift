import Foundation

open class FileKit {

    // Define typealias
    public typealias Path = String

    // Path
    internal var path: String

    // Foundational File Manager
    internal static var fm = FileManager.default


    // Initializers
    public init() {
        self.path = ""
    }

    public init(_ path: String) {
        self.path = path
    }
}


// Internet file management
extension FileKit {
    public func curlO(url: String) {
        return
    }
}
