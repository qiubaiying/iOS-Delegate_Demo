//
//  ViewController.m
//  Objc代理
//
//  Created by BaiYing on 2017/3/6.
//  Copyright © 2017年 BY. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"


@interface ViewController () <SubViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (IBAction)goSubView:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"goSub" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"goSub"]) {
        SubViewController *subVC = segue.destinationViewController;
        subVC.delegate = self;
    }
}

- (void)backWithStr:(NSString *)str {
    
    self.label.text = str;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    int a = 10;
    
    printf("%d", a);
}




@end
