//
//  CRSlotLabel.m
//  slotLabelExample
//
//  Created by croath on 13-2-28.
//  Copyright (c) 2013年 croath. All rights reserved.
//

#import "CRSlotLabel.h"

@interface CRSlotLabel(){
  NSInteger _destination;
  NSInteger _origin;
  NSTimer *_timer;
}

@end

@implementation CRSlotLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setText:(NSString *)text{
  if ((![text isEqualToString:@"0"] && [text integerValue] == 0) ||
      (![self.text isEqualToString:@"0"] && [self.text integerValue] == 0)) {
    [super setText:text];
    return;
  }
  _destination = [text integerValue];
  _origin = [self.text integerValue];
  
  _timer = [NSTimer timerWithTimeInterval:_animationTime / fabs(_destination - _origin)
                                   target:self
                                 selector:@selector(run)
                                 userInfo:nil
                                  repeats:YES];
  [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}

- (void)run{
  if ([self.text integerValue] != _destination) {
    [super setText:[NSString stringWithFormat:@"%d", [self.text integerValue] + 1]];
  } else {
    [_timer invalidate];
    [super setText:[NSString stringWithFormat:@"%d", _destination]];
  }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
