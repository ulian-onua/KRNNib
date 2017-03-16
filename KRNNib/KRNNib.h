//
//  KRNNibHelper.h
//
// Julian Drapaylo - 2017

#import <Foundation/Foundation.h>
@import UIKit;

@interface KRNNib : NSObject

//instantiate UINib instance from main bundle by name or with data stored in memory
+ (UINib *)nibWithName:(NSString *)nibName;
+ (UINib *)nibWithData:(NSData *)data;

//returns first UIView instance from nib from main bundle by name or with data stored in memory
+ (UIView *)viewFromNibWithName:(NSString *)nibName;
+ (UIView *)viewFromNibWithData:(NSData *)data;

@end
