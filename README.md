## Requirements

- iOS 11.0
- Swift 5

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate ZFRatingBadge into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'ZFRatingBadge', '1.0.0'
```

## How To

Create a badge:

```swift
// Creates a badge with the following default properties:
// shadowRadius: CGFloat = 5
// shadowColor: CGColor = UIColor.darkGray.cgColor
// shadowOpacity: Float = 0.5
// shadowOffset: CGSize = CGSize(width: -1, height: 1)

let badge = ZFRatingBadge()
```

Or:

```swift

// Specify your own backgroundColor, starImage, rating, font, textColor, shadowRadius, shadowColor, shadowOpacity, and shadowOffset.

let badge = ZFRatingBadge(backgroundColor: UIColor, starImage: UIImage, rating: Double, font: UIFont, textColor: UIColor, shadowRadius: CGFloat, shadowColor: CGColor, shadowOpacity: Float, shadowOffset: CGSize)
```

Available Properties:

```swift
    override public var backgroundColor: UIColor? {
        willSet(color) {
            self.backgroundView.backgroundColor = color
        }
    }
    
    open var starImage: UIImage = UIImage(named: "Star")! {
        willSet(image) {
            self.starImageView.image = image
        }
    }
    
    open var rating: Double = 0.0 {
        willSet(rating) {
            self.ratingLabel.text = "\(rating)"
        }
    }
    
    open var font: UIFont = UIFont(name: "HelveticaNeue", size: 16)! {
        willSet(font) {
            self.ratingLabel.font = font
        }
    }
    
    open var textColor: UIColor = .white {
        willSet(color) {
            self.ratingLabel.textColor = color
        }
    }
    
    open var shadowRadius: CGFloat = 0 {
        willSet(shadowRadius) {
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    open var shadowColor: CGColor = UIColor.clear.cgColor {
        willSet(shadowColor) {
            self.layer.shadowColor = shadowColor
        }
    }
    
    open var shadowOpacity: Float = 0 {
        willSet(shadowOpacity) {
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    
    open var shadowOffset: CGSize = CGSize.zero {
        willSet(shadowOffset) {
            self.layer.shadowOffset = shadowOffset
        }
    }
```

## License

ZFRatingBadge is released under the MIT license. [See LICENSE](https://github.com/zafarivaev/ZFRatingBadge/blob/master/LICENSE) for details.
