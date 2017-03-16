KRNNib
===============

KRNNib is a simple class that helps your load nibs and instantiate views from nibs.


## Installation
####CocoaPods

(Unfamiliar with [CocoaPods](http://cocoapods.org/) yet? It's a dependency management tool for iOS and Mac, check it out!)

Just add `pod 'KRNNib'` to your Podfile and run `pod install` in Terminal from your project folder.

Write `#import "KRNNib.h"` in files where you need to use KRNNib. 

## How to use
All methods of KRNNib are static so you can simply call any of method without necessity of allocation of KRNNib instance.

```objc
//instantiate UINib instance from main bundle by name or with data stored in memory
+ (UINib *)nibWithName:(NSString *)nibName;
+ (UINib *)nibWithData:(NSData *)data;

//returns first UIView instance from nib from main bundle by name or with data stored in memory
+ (UIView *)viewFromNibWithName:(NSString *)nibName;
+ (UIView *)viewFromNibWithData:(NSData *)data;
```

For example, if you have a TestView.xib file you can instatiate a view from it like in example below:
```objc
UIView *view = [KRNNib viewFromNibWithName:@"TestView"];
[self.view addSubview:view]; // add instantiated view as subview to view of current UIViewController
 ``` 

## Example Project
Feel free to look into example project which clearify how to use KRNNib.

## Requirements

* iOS 8.0 and above
* XCode 7+


## License

KRNNib is released under the MIT license. See LICENSE for details.

## Contact

Any suggestion or question? Please create a Github issue or reach me out.

[LinkedIn](https://www.linkedin.com/in/julian-drapaylo)
