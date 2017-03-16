//
//  KRNNibHelper.m
// Julian Drapaylo

#import "KRNNib.h"

@implementation KRNNib

#pragma mark - Nib

+ (UINib *)nibWithName:(NSString *)nibName {
    if (!nibName) return nil;
    return [UINib nibWithNibName:nibName bundle:nil];
}

+ (UINib *)nibWithData:(NSData *)data {
    if (!data) return nil;
    return [UINib nibWithData:data bundle:nil];
}

#pragma mark - View from nib

+ (UIView *)viewFromNibWithName:(NSString *)nibName {
    UINib *nib = [self nibWithName:nibName];
    return [self getFirstViewFromNib:nib];
}

+ (UIView *)viewFromNibWithData:(NSData *)data {
    UINib *nib = [self nibWithData:data];
    return [self getFirstViewFromNib:nib];
}

#pragma mark - Helpers
+ (UIView *)getFirstViewFromNib:(UINib *)nib {
    if (!nib) return nil;
    NSArray *nibResults = [nib instantiateWithOwner:nil options:nil];
    if (nibResults.count > 0) {
        return nibResults.firstObject;
    } else {
        return nil;
    }
}

@end
