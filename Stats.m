//
//  Stats.m
//  DogeCollector
//
//  Created by Albert Kornas on 4/12/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Stats.h"

@implementation Stats {
    CCLabelTTF *totalMinedLabel;
}

- (void)didLoadFromCCB {
    totalMinedLabel.string = [NSString stringWithFormat:@"%.2Lf", totalMined];
}

-(void) back {
    CCScene *digScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:digScene];
}

@end
