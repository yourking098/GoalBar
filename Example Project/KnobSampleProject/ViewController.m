//
//  ViewController.m
//  KnobSampleProject
//
//  Created by Kevin Donnelly on 5/17/12.
//  Copyright (c) 2012 -. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    CGFloat _currentPercent;//当前走了多少
    CGFloat _timeInterval;//定时器每隔几秒触发一次事件
    CGFloat _eachIntervalPercent;
}

@end

@implementation ViewController
@synthesize firstGoalBar;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _currentPercent=0;//当前定时器走了百分比
    _timeInterval=0.01;//定时器每隔0.01秒触发一次事件
    
    CGFloat totalSecond=30.00;//转一圈定时花30秒
    _eachIntervalPercent=(100.00/totalSecond)*_timeInterval;//每秒走百分之3.333，每0.01秒走 百分比
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:_timeInterval target:self selector:@selector(animation1:) userInfo:nil repeats:YES];
    
	[firstGoalBar setAllowDragging:NO];//允许
    [firstGoalBar setAllowSwitching:NO];
    [firstGoalBar setPercent:_currentPercent animated:NO];
}

-(void)animation1:(NSTimer *)timer {
    if (_currentPercent >= 100.00) {
        _currentPercent = 0;
    } else {
        _currentPercent=_currentPercent+_eachIntervalPercent;
    }
    NSLog(@"%.2lf",_currentPercent);
    [firstGoalBar setPercent:_currentPercent animated:NO];
}



- (void)viewDidUnload
{
    [self setFirstGoalBar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
