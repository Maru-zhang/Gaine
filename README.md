# Gaine

[![CI Status](http://img.shields.io/travis/Maru-zhang/Gaine.svg?style=flat)](https://travis-ci.org/Maru-zhang/Gaine)
[![Version](https://img.shields.io/cocoapods/v/Gaine.svg?style=flat)](http://cocoapods.org/pods/Gaine)
[![License](https://img.shields.io/cocoapods/l/Gaine.svg?style=flat)](http://cocoapods.org/pods/Gaine)
[![Platform](https://img.shields.io/cocoapods/p/Gaine.svg?style=flat)](http://cocoapods.org/pods/Gaine)

## What is Gaine

`Gaine` is a tiny and elegant Swift Framework for initialize value and object conveniently.By the way, this repo is inspire by [Then](https://github.com/devxoul/Then).

## Why Gaine

There is comparison between Gaine way and [Then](https://github.com/devxoul/Then) way:

### **1. Create UIButton**

#### Then way
```
lazy var foo = UILabel().then {
   $0.textAlignment = .center
   $0.textColor = .black
   $0.text = "Hello, World!"
}
```

#### Gaine way
```
lazy var foo = Gaine(UILabel()) {
   $0.textAlignment = .center
   $0.textColor = .black
   $0.text = "Hello, World!"
}
```

### **2. Create Custom Type**

#### Then way

```
class MyType {
    var name: String?
}

/// we need to write this line to make custom type confirm `Then` protocol
extension MyType: Then {}

class Demo {

    lazy var foo = MyType().then {
        $0.name = "value"
    }
}
```

#### Gaine way

```
class MyType {
    var name: String?
}

/// we don't need to write any more code for custom type
class Demo {

    lazy var foo = Gaine(MyType()) {
        $0.name = "value"
    }
}
```

### **3. Deal with value Type**

#### Then way

```
class Demo {

    /// we need to use another keyword `with`
    lazy var foo = CGSize().with {
        $0.width = 100
        $0.height = 200
    }
}
```

#### Gaine way

```
class Demo {

    /// the way to initialize is same
    lazy var foo = Gaine(CGSize()) {
       $0.width = 100
       $0.height = 200
    }
}

```

### **4. Less Code**

All code for Gaine is just 5 lines.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

Gaine is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Gaine'
```

## Author

Maru-zhang, maru-zhang@foxmail.com

## License

Gaine is available under the MIT license. See the LICENSE file for more info.


