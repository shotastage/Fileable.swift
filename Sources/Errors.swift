import Foundation

enum FileError: Error {
    case NotExists
    case PermissionError
    case Unkown(String)
}
