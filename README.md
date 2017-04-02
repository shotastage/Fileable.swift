# 🗂 FileKit

FileKit is file utilities for Swift.
It enables to mange files or directories efficiently and easily.

# ⌘ APIs

| Function | |
|:--|:--|
| `func pwd() -> String` | Get current directory path as a string.|
| `func home() -> Strings` | Get home directory path.|
| `func isFile(file: String) -> Bool` | Check the file exists or not. |
| `func isDir(path: String) -> Bool ` | Check the directory exists or not.|
| `func cd(path: String) throws`| Change directory like a `cd` command.|
| `func mkdir(path: String) throws` | Make directory. |
| `func rm(target: String) throws`| Remove directory or file. |
| `func mv(from fromPath: String, to toPath: String)`| Move file or directory.|
| `func touch(_ path: String) throws`| Create empty file. |
