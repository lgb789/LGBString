//
//  LGBViewController.m
//  LGBString
//
//  Created by lgb789 on 05/18/2016.
//  Copyright (c) 2016 lgb789. All rights reserved.
//

#import "LGBViewController.h"
#import "NSString+lgb_string.h"

@interface LGBViewController ()

@end

@implementation LGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *str = @"123456";
    
    NSString *md5 = [str lgb_md5];
    
    NSLog(@"%@\n%@", str, md5);
    
    NSString *empty = @" ";
    
    NSLog(@"empty-->%d", [NSString lgb_isEmpty:empty]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
