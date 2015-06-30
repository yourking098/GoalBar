//
//  ViewController.h
//  KnobSampleProject
//
//  Created by Kevin Donnelly on 5/17/12.
//  Copyright (c) 2012 -. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KDGoalBar.h"

@interface ViewController : UIViewController{
    NSTimer *_timer;
}

@property (weak, nonatomic) IBOutlet KDGoalBar *firstGoalBar;

@end
