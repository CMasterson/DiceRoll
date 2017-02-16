//
//  ViewController.m
//  D20Roller
//
//  Created by Consie on 15/02/2017.
//  Copyright © 2017 Conor. All rights reserved.
//

#import "ViewController.h"

#define DIE_SPIN_TIME 0.7

@implementation ViewController

@synthesize rolledNumberLabel;
@synthesize dieImageView;
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)rollButtonTapped:(id)sender {
    
    rolledNumberLabel.alpha = 0.0;
    rolledNumberLabel.text = [NSString stringWithFormat:@"%i",((arc4random() % 20) + 1)];
    
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0];
    rotationAnimation.duration = DIE_SPIN_TIME;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 0;
    
    [dieImageView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    
    [UIView animateWithDuration:1 delay:DIE_SPIN_TIME options:UIViewAnimationOptionCurveLinear
                     animations:^{ rolledNumberLabel.alpha = 1.0; } completion:^(BOOL finished) {} ];
}


@end
