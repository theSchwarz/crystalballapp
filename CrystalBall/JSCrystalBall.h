//
//  JSCrystalBall.h
//  CrystalBall
//
//  Created by Y.CORP.YAHOO.COM\joshsch on 9/7/14.
//  Copyright (c) 2014 Josh Schwarzapel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSCrystalBall : NSObject {
    NSArray *_phrases;
}

- (NSString*) randomPrediction;

@property(strong,nonatomic,readonly) NSArray *phrases;

@end
