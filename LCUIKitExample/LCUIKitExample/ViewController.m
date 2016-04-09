//
//  ViewController.m
//  LCUIKitExample
//
//  Created by jiangliancheng on 16/4/9.
//  Copyright © 2016年 jiangliancheng. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "UIButton+LCAlignment.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIView *label = ({
//        UIView *label = [[UIView alloc] init];
//        [self.view addSubview:label];
//        [label setBackgroundColor:[UIColor blueColor]];
//        [label mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.offset(0);
//            make.size.sizeOffset(CGSizeMake(100, 100));
//        }];
//        label;
//    });
    


    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"acebook" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [btn.titleLabel setBackgroundColor:[UIColor greenColor]];
    [btn setImage:[UIImage imageNamed:@"icon_facebook"] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.offset(0);
    }];
    
    
    [btn lc_titleImageHorizontalAlignmentWithSpace:0];
    [btn lc_titleImageVerticalAlignmentWithSpace:0];

}

- (void)injected
{
    NSLog(@"I've been injected: %@", self);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
