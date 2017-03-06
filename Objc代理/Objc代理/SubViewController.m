//
//  SubViewController.m
//  Objc代理
//
//  Created by BaiYing on 2017/3/6.
//  Copyright © 2017年 BY. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)backBtnTap:(id)sender {
    
    // 判断代理是实现该方法
    if ([self.delegate respondsToSelector:@selector(backWithStr:)]) {
         [self.delegate backWithStr:self.textField.text];
             }
   

   
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
