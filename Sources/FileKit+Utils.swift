import Foundation

// Utils
extension FileKit {

    public func touch(_ path: String) throws {
        let empty = ""
        do {
            try empty.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("failed to write: \(error)")
        }
    }
}
