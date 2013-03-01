//
//  ViewController.m
//  slotLabelExample
//
//  Created by croath on 13-2-28.
//  Copyright (c) 2013年 croath. All rights reserved.
//

#import "ViewController.h"
#import "CRSlotLabel.h"

@interface ViewController (){
  CRSlotLabel *label;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  label = [[CRSlotLabel alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
  [label setAnimationTime:5.0f];
  [label setText:@"10000"];
  
  [self.view addSubview:label];
}

- (void)viewDidAppear:(BOOL)animated{
  [super viewDidAppear:animated];
  [label setText:@"6"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
