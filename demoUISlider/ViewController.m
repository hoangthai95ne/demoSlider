//
//  ViewController.m
//  demoUISlider
//
//  Created by Hoàng Thái on 12/16/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer* _timer;
    
    __weak IBOutlet UISlider *slider;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    slider.value = 0.0;
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 
                                              target:self 
                                            selector:@selector(onTimer) 
                                            userInfo:nil 
                                             repeats:true];
    slider.transform = CGAffineTransformMakeRotation(-M_PI_2);
    slider.tintColor = [UIColor redColor];
    slider.thumbTintColor = [UIColor yellowColor];
}

- (void) onTimer {
    slider.value += 0.05;
    if (slider.value >= 1.0) {
        slider.value = 1.0;
        [_timer invalidate];
    }
}

@end
