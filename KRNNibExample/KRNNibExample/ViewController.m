//
//  ViewController.m
//  KRNNibExample
//
//  Created by ulian_onua on 3/16/17.
//  Copyright © 2017 ulian_onua. All rights reserved.
//

#import "ViewController.h"
#import "KRNNib.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *testView;
@end

@implementation ViewController

#pragma mark - Actions

- (IBAction)fromNameAction:(id)sender {
    [self clearAction:nil];
     _testView = [KRNNib viewFromNibWithName:@"TestView"];
    [self layoutTestView];
    
}

- (IBAction)fromDataAction:(id)sender {
    [self clearAction:nil];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"TestView" ofType:@"nib"];
    if (path) {
        NSData *nibData = [NSData dataWithContentsOfFile:path];
        _testView = [KRNNib viewFromNibWithData:nibData];
        [self layoutTestView];
    }
}

- (IBAction)clearAction:(id)sender {
    if (_testView) {
        [_testView removeFromSuperview];
        _testView = nil;
    }
}

#pragma mark - Layout

- (void)layoutTestView {
    if (_testView) {
        _testView.translatesAutoresizingMaskIntoConstraints = YES;
        [self.view addSubview:_testView];
        _testView.center = self.view.center;
    }
}

@end
