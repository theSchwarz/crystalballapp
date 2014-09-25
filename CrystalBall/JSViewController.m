//
//  JSViewController.m
//  CrystalBall
//
//  Created by Y.CORP.YAHOO.COM\joshsch on 9/7/14.
//  Copyright (c) 2014 Josh Schwarzapel. All rights reserved.
//

#import "JSViewController.h"
#import "JSCrystalBall.h"

@interface JSViewController ()

@end

@implementation JSViewController

#pragma mark - uncategorized events

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.cb = [[JSCrystalBall alloc] init];
    
    [self.predictionLabel setCenter:self.view.center];
    
    //this is lame. how to set up with a loop? Had to write in Python with a loop.
    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
                                                [UIImage imageNamed:@"CB00001.png"],
                                                [UIImage imageNamed:@"CB00002.png"],
                                                [UIImage imageNamed:@"CB00003.png"],
                                                [UIImage imageNamed:@"CB00004.png"],
                                                [UIImage imageNamed:@"CB00005.png"],
                                                [UIImage imageNamed:@"CB00006.png"],
                                                [UIImage imageNamed:@"CB00007.png"],
                                                [UIImage imageNamed:@"CB00008.png"],
                                                [UIImage imageNamed:@"CB00009.png"],
                                                [UIImage imageNamed:@"CB00010.png"],
                                                [UIImage imageNamed:@"CB00011.png"],
                                                [UIImage imageNamed:@"CB00012.png"],
                                                [UIImage imageNamed:@"CB00013.png"],
                                                [UIImage imageNamed:@"CB00014.png"],
                                                [UIImage imageNamed:@"CB00015.png"],
                                                [UIImage imageNamed:@"CB00016.png"],
                                                [UIImage imageNamed:@"CB00017.png"],
                                                [UIImage imageNamed:@"CB00018.png"],
                                                [UIImage imageNamed:@"CB00019.png"],
                                                [UIImage imageNamed:@"CB00020.png"],
                                                [UIImage imageNamed:@"CB00021.png"],
                                                [UIImage imageNamed:@"CB00022.png"],
                                                [UIImage imageNamed:@"CB00023.png"],
                                                [UIImage imageNamed:@"CB00024.png"],
                                                [UIImage imageNamed:@"CB00025.png"],
                                                [UIImage imageNamed:@"CB00026.png"],
                                                [UIImage imageNamed:@"CB00027.png"],
                                                [UIImage imageNamed:@"CB00028.png"], 
                                                [UIImage imageNamed:@"CB00029.png"], 
                                                [UIImage imageNamed:@"CB00030.png"], 
                                                [UIImage imageNamed:@"CB00031.png"], 
                                                [UIImage imageNamed:@"CB00032.png"], 
                                                [UIImage imageNamed:@"CB00033.png"], 
                                                [UIImage imageNamed:@"CB00034.png"], 
                                                [UIImage imageNamed:@"CB00035.png"], 
                                                [UIImage imageNamed:@"CB00036.png"], 
                                                [UIImage imageNamed:@"CB00037.png"], 
                                                [UIImage imageNamed:@"CB00038.png"], 
                                                [UIImage imageNamed:@"CB00039.png"], 
                                                [UIImage imageNamed:@"CB00040.png"], 
                                                [UIImage imageNamed:@"CB00041.png"], 
                                                [UIImage imageNamed:@"CB00042.png"], 
                                                [UIImage imageNamed:@"CB00043.png"], 
                                                [UIImage imageNamed:@"CB00044.png"], 
                                                [UIImage imageNamed:@"CB00045.png"], 
                                                [UIImage imageNamed:@"CB00046.png"], 
                                                [UIImage imageNamed:@"CB00047.png"], 
                                                [UIImage imageNamed:@"CB00048.png"], 
                                                [UIImage imageNamed:@"CB00049.png"], 
                                                [UIImage imageNamed:@"CB00050.png"], 
                                                [UIImage imageNamed:@"CB00051.png"], 
                                                [UIImage imageNamed:@"CB00052.png"], 
                                                [UIImage imageNamed:@"CB00053.png"], 
                                                [UIImage imageNamed:@"CB00054.png"], 
                                                [UIImage imageNamed:@"CB00055.png"], 
                                                [UIImage imageNamed:@"CB00056.png"], 
                                                [UIImage imageNamed:@"CB00057.png"], 
                                                [UIImage imageNamed:@"CB00058.png"], 
                                                [UIImage imageNamed:@"CB00059.png"], 
                                                [UIImage imageNamed:@"CB00060.png"],
                                                nil];
    NSLog(@"backgroundImageView animation is %@", self.backgroundImageView.animationImages);
    
    self.backgroundImageView.animationDuration = 2.0f; //2 second duration for animation
    self.backgroundImageView.animationRepeatCount = 2;
    
    //this is how we'd set up bg image without IB
    //UIImage *bgImg = [UIImage imageNamed:@"background"];
    //UIImageView *bgImgV = [[UIImageView alloc] initWithImage:bgImg];
    
    //[self.view insertSubview:bgImgV atIndex:0];
    //NSLog(@"Here it is: %@",self.predictionLabel.frame.origin.x);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //self.predictionLabel.frame = CGRectMake(20, 30, 100, 100); Shows us how to eff with the position/size of a view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)makePrediction {
    [self.backgroundImageView startAnimating];
    self.predictionLabel.text = [self.cb randomPrediction];
}



#pragma mark - motion events

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion began");
}


- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion ended");
    if ( motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"motion cancelled");
}

#pragma mark - touch events

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches cancelled");
}


//Don't need the button anymore!
//- (IBAction)buttonPressed {
    //NSLog(@"Button pressed!\n");
    
    // NSString *foo = [self.cb randomPrediction];
    // NSLog(@"foo is %@", foo);
    //[self makePrediction];

//}


@end
