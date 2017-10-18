# 🗂 FileKit

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Labbiness/FileKit)

![iOS 10+](https://img.shields.io/badge/iOS-10%2B-blue.svg?style=flat)

![Swift 4](https://img.shields.io/badge/Swift-4-orange.svg?style=flat)



FileKit is file utilities for Swift.
It enables to mange files or directories efficiently and easily.

# Installation

## CocoaPods
At now, we aim to register this library to CocoaPods official repository. However, this library is currently under construction process. Thus, you have to configure `Podfile` manually to get this library from this github repository.


```
pod 'https://github.com/Labbiness/FileKit.git'
```

## Carthage

You can use this library with Carthage by simply putting this text to `Cartfile`.

```
github "Labbiness/FileKit"
```

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



# License
FileKit is licensed under the `MIT`. 
You can use this library free of charge. Please include copyright notie in your program.
See [LICENSE](./LICENSE) for detail.


