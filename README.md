![Fileable](./Documentation/filekit_readme.png)

[![Build Status](https://travis-ci.org/shotastage/Fileable.swift.svg?branch=master)](https://travis-ci.org/shotastage/Fileable.swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/shotasatge/Fileable)
[![Version](https://img.shields.io/cocoapods/v/Fileable.svg?style=flat)](http://cocoapods.org/pods/Fileable)
![iOS 10+](https://img.shields.io/badge/iOS-10%2B-blue.svg?style=flat)
![Swift 5](https://img.shields.io/badge/Swift-5-orange.svg?style=flat)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fshotastage%2FFileable.swift.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fshotastage%2FFileable.swift?ref=badge_shield)


Fileable is file utilities for Swift.
It enables to mange files or directories efficiently and easily.

# Installation

## CocoaPods

You can install this library via Cocoapods just putting text described below to `Podfile`.

```
pod 'Fileable'
```

## Carthage

You can use this library with Carthage by simply putting this text to `Cartfile`.

```
github "shotastage/Fileable"
```

# ⌘ APIs

| Function or Computed property | |
|:--|:--|
| `static var pwd: String` | Get current directory path.|
| `static var home: String` | Get home directory path.|
| `var ls: [String]?` | Get contents of specific directory.|
| `var isFile: Bool` | Check the file exists or not. |
| `var isDir: Bool ` | Check the directory exists or not.|
| `var ext: String` | Get file extension.|
| `static func cd(path: String) throws`| Change directory like a `cd` command.|
| `static func mkdir(path: String) throws` | Make directory. |
| `func rm(target: String) throws`| Remove directory or file. |
| `func mv(to toPath: String) throws`| Move file or directory.|
| `func touch(at: String) throws`| Create empty file. |



# License

Fileable is licensed under the `MIT`. 
You can use this library free of charge. Please include copyright notie in your program.
See [LICENSE](./LICENSE) for detail.


[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fshotastage%2FFileable.swift.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fshotastage%2FFileable.swift?ref=badge_large)
