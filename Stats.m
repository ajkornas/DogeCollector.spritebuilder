//
//  Stats.m
//  DogeCollector
//
//  Created by Albert Kornas on 4/12/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Stats.h"
#import "Shopp.h"

int unitsBought;
long double totalDogeMined;
int totalSpent;

int amtDiggers;
int amtDynamites;
int amtMoons;
int amtLabs;
int amtEx;
int amtPortals;

@implementation Stats {
    CCLabelTTF *totalMinedLabel;
    CCLabelTTF *unitsBoughtLabel;
    CCLabelTTF *totalDogeSpent;
    
    CCLabelTTF *diggerLabel;
    CCLabelTTF *dynamiteLabel;
    CCLabelTTF *moonsLabel;
    CCLabelTTF *labsLabel;
    CCLabelTTF *exLabel;
    CCLabelTTF *portalsLabel;
}

- (void)didLoadFromCCB {
    totalMinedLabel.string = [NSString stringWithFormat:@"%.2Lf", totalDogeMined];
    unitsBoughtLabel.string = [NSString stringWithFormat:@"%d", unitsBought];
    totalDogeSpent.string = [NSString stringWithFormat:@"%d", totalSpent];
    
    diggerLabel.string = [NSString stringWithFormat:@"%d", amtDiggers];
    dynamiteLabel.string = [NSString stringWithFormat:@"%d", amtDynamites];
    moonsLabel.string = [NSString stringWithFormat:@"%d", amtMoons];
    labsLabel.string = [NSString stringWithFormat:@"%d", amtLabs];
    exLabel.string = [NSString stringWithFormat:@"%d", amtEx];
    portalsLabel.string = [NSString stringWithFormat:@"%d", amtPortals];
}

-(void) back {
    CCScene *digScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:digScene];
}

@end
