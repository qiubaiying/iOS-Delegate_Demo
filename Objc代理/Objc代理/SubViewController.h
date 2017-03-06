//
//  SubViewController.h
//  Objc代理
//
//  Created by BaiYing on 2017/3/6.
//  Copyright © 2017年 BY. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SubViewDelegate <NSObject>

- (void)backWithStr:(NSString *) str;

@end

@interface SubViewController : UIViewController

@property (nonatomic, weak) id<SubViewDelegate> delegate;

@end
