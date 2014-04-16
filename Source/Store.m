//
//  Store.m
//  DogeCollector
//
//  Created by Albert Kornas on 2/13/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Store.h"

long double hashRate;
long double _doge;

@implementation Store {
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
    hashRate += 400000000000000;
    dogeAmountStore.string = [NSString stringWithFormat:@"%.2Lf", _doge];
    [self didLoadFromCCB];
    }
}

-(void) buyDynamiteShibe {
    if (_doge >= 600) {
        _doge -= 600;
        hashRate += 1400;
    [self didLoadFromCCB];
    }
}

-(void) buyMoonComputer {
    if (_doge >= 2000) {
        _doge -= 2000;
        hashRate += 6000;
        [self didLoadFromCCB];
    }
}

-(void) buyLab {
    if (_doge >= 8000) {
        _doge -= 8000;
    hashRate += 27000;
        [self didLoadFromCCB];
    }
}

-(void) buyExcavator {
    if (_doge >= 70000) {
        _doge -= 70000;
    hashRate += 280000;
        [self didLoadFromCCB];
    }
}

-(void) buyPortal {
    if (_doge >= 500000) {
        _doge -= 500000;
    hashRate += 2800000;
        [self didLoadFromCCB];
    }
}

-(void) back {
    CCScene *digScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:digScene];
}
@end
