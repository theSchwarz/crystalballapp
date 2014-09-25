//
//  JSViewController.h
//  CrystalBall
//
//  Created by Y.CORP.YAHOO.COM\joshsch on 9/7/14.
//  Copyright (c) 2014 Josh Schwarzapel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JSCrystalBall;

@interface JSViewController : UIViewController

//- (IBAction)buttonPressed;
- (void) makePrediction;
@property (strong, nonatomic) IBOutlet UILabel  *predictionLabel;
@property (strong, nonatomic) NSArray *phrases;
@property (strong, nonatomic) JSCrystalBall *cb;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@end
