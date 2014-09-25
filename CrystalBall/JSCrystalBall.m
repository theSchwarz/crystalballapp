//
//  JSCrystalBall.m
//  CrystalBall
//
//  Created by Y.CORP.YAHOO.COM\joshsch on 9/7/14.
//  Copyright (c) 2014 Josh Schwarzapel. All rights reserved.
//

#import "JSCrystalBall.h"

@implementation JSCrystalBall

- (NSArray *) phrases {
    if (_phrases == nil) {
        _phrases = @[@"YES", @"Never going to happen!", @"My sources say yes!", @"I  hope so!", @"Maybe so. Maybe not.", @"Perhaps my friend", @"Dream on brAh!"];
    }
    return _phrases;
}

- (NSString*) randomPrediction {
    
    NSLog(@"randomPrediction method");
    int random = arc4random_uniform(self.phrases.count);
    
    NSLog(@"self.phrase is %@",self.phrases);
    NSString *phrase = self.phrases[random];
    return phrase;
}

@end
