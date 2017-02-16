//
//  ViewController.m
//  D20Roller
//
//  Created by Consie on 15/02/2017.
//  Copyright © 2017 Conor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

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
    rolledNumberLabel.text = [NSString stringWithFormat:@"%i",(arc4random() % 20)];
}


@end
