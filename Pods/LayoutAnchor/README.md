LayoutAnchor
==========

An autolayout anchor wrapper.

Add some extenstion to `UIView` and `UILayoutGuide`

- [Extensions](#extensions)
- [Usage](#usage)
- [Requirements](#requirements)
- [Installation](#installation)
    - [CocoaPods](#cocoaPods)
    - [Carthage](#carthage)

## Extensions

``` swift
// UIView and UILayoutGuide
var leading : LayoutAnchor<NSLayoutXAxisAnchor> 
var trailing : LayoutAnchor<NSLayoutXAxisAnchor>  
var left : LayoutAnchor<NSLayoutXAxisAnchor>  
var right : LayoutAnchor<NSLayoutXAxisAnchor>  
var centerX : LayoutAnchor<NSLayoutXAxisAnchor>  

var top : LayoutAnchor<NSLayoutYAxisAnchor> 
var bottom : LayoutAnchor<NSLayoutYAxisAnchor>
var centerY : LayoutAnchor<NSLayoutYAxisAnchor> 

var width : LayoutAnchor<NSLayoutDimension> 
var height : LayoutAnchor<NSLayoutDimension> 

// UIView
var firstBaseline : LayoutAnchor<NSLayoutYAxisAnchor> 
var lastBaseline : LayoutAnchor<NSLayoutYAxisAnchor> 
```

## Usage

``` swift
let v1 = UIView();v1.translatesAutoresizingMaskIntoConstraints = false
let v2 = UIView();v2.translatesAutoresizingMaskIntoConstraints = false

let constraints:[NSLayoutConstraint] = [
    v1.leading == v2.leading + 10,
    v1.trailing == v2.trailing + 10,
    v1.safeAreaLayoutGuide.top == v2.top - 10,
    v1.safeAreaLayoutGuide.bottom == v2.bottom - 10,
]
constraints.activate()

(v1.bottom == v2.bottom - 10).activate()
```

## Requirements

- iOS 9.0+
- Xcode 9.0+
- Swift 4.0+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.1+ is required to build Alamofire 4.0+.

To integrate LayoutAnchor into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'LayoutAnchor', '~> 4.0'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate LayoutAnchor into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "yume190/LayoutAnchor" ~> 4.0
```

Run `carthage update --platform ios` to build the framework and drag the built LayoutAnchor.framework into your Xcode project.
