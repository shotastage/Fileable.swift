import Foundation

public protocol FileKitProtocol {
    //
}

protocol BasicFileCommands {
    func cd(_ path: String) throws
    func mkdir(_ path: String) throws
    func rm(_ target: String) throws
    func mv(from fromPath: String, to toPath: String) throws
}
