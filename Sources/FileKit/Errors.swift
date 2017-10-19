import Foundation

enum FileError: Error {
    case NotExists
    case AleardyExists
    case PermissionError
    case Unkown(String)
}
