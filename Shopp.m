//
//  Shopp.m
//  DogeCollector
//
//  Created by Albert Kornas on 4/17/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Shopp.h"
#import "Stats.h"

long double hashRate;
long double _doge;
int unitsBought;
int totalSpent;

int amtDiggers;
int amtDynamites;
int amtMoons;
int amtLabs;
int amtEx;
int amtPortals;


@implementation Shopp {
    CCLabelTTF *hashLabel;
    CCLabelTTF *dogeAmountStore;
}

- (void)didLoadFromCCB {
    if (_doge < 1000000000000)
        dogeAmountStore.string = [NSString stringWithFormat:@"%.2Lf", _doge];
    else
        dogeAmountStore.string = @"A lot!";
}

-(void) buyDiggerShibe {
    if (_doge >= 10) {
        _doge -= 10;
        totalSpent += 200;
        hashRate += 400000000000000;
        dogeAmountStore.string = [NSString stringWithFormat:@"%.2Lf", _doge];
        unitsBought++;
        amtDiggers++;
        [self didLoadFromCCB];
    }
}

-(void) buyDynamiteShibe {
    if (_doge >= 600) {
        _doge -= 600;
        totalSpent += 600;
        hashRate += 1400;
        unitsBought++;
        amtDynamites++;
        [self didLoadFromCCB];
    }
}

-(void) buyMoonComputer {
    if (_doge >= 2000) {
        _doge -= 2000;
        totalSpent += 2000;
        hashRate += 6000;
        unitsBought++;
        amtMoons++;
        [self didLoadFromCCB];
    }
}

-(void) buyLab {
    if (_doge >= 8000) {
        _doge -= 8000;
        totalSpent += 8000;
        hashRate += 27000;
        unitsBought++;
        amtLabs++;
        [self didLoadFromCCB];
    }
}

-(void) buyExcavator {
    if (_doge >= 70000) {
        _doge -= 70000;
        totalSpent += 70000;
        hashRate += 280000;
        unitsBought++;
        amtEx++;
        [self didLoadFromCCB];
    }
}

-(void) buyPortal {
    if (_doge >= 500000) {
        _doge -= 500000;
        totalSpent += 500000;
        hashRate += 2800000;
        unitsBought++;
        amtPortals++;
        [self didLoadFromCCB];
    }
}

-(void) back {
    CCScene *digScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:digScene];
}
@end
