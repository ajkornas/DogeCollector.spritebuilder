//
//  MainScene.m
//
//  Developed by Albert Kornas
//
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"
#import "Store.h"
#import "Upgrades.h"
#import "Stats.h"


long double randomCounter;


NSTimer *animTimer;
NSTimer *_mineTime;
NSTimer *_mousePay;
long double _payout = 1;
NSInteger _mouseLvl = 1;
NSInteger _upgradePrice;
double _bonusClickPay;
BOOL coinFall = FALSE;

extern BOOL _shovel;
extern BOOL _dynamite;
extern BOOL _moonComp;
extern BOOL _lab;
extern BOOL _moonEx;
extern BOOL _timeWarp;

extern int diggerPay;
extern int dynamitePay;
extern int computerPay;
extern int labPay;
extern int moonPay;
extern int timePay;

extern long double totalMined;
extern long double totalSpent;

@implementation MainScene {
    CCLabelTTF *dogeAmount;
    CCLabelTTF *hashLabelDig;
    CCLabelTTF *Notify;
    CCLabelTTF *upgradePriceLabel;
    CCLabelTTF *mouseLvlLabel;
    CCPhysicsNode *_fountain;
    CCPhysicsNode *_physicsNode;
}

- (void)didLoadFromCCB {
    CCLOG(@"Loaded from CCB");
        hashLabelDig.string = [NSString stringWithFormat:@"%Lf", hashRate];
    //[self calculatePayout];
        dogeAmount.string = [NSString stringWithFormat:@"%.2Lf", _doge];

    _mineTime = [NSTimer scheduledTimerWithTimeInterval:1
                                                    target:self
                                                  selector:@selector(payDoge)
                                                  userInfo:nil
                                                   repeats:YES];
    
    
    _upgradePrice = (_mouseLvl * 400);
    mouseLvlLabel.string = [NSString stringWithFormat:@"%d", _mouseLvl];
    upgradePriceLabel.string = [NSString stringWithFormat:@"%d", _upgradePrice];
        [self calcBonusPay];
}

-(void)calcBonusPay {
    if (pickaxeLevel == 0) {
        _bonusClickPay += 0;
    } else if (pickaxeLevel == 1) {
        _bonusClickPay += 3;
    } else if (pickaxeLevel == 2) {
        _bonusClickPay += 20;
    } else if (pickaxeLevel == 3) {
        _bonusClickPay += 150;
    } else if (pickaxeLevel == 4) {
        _bonusClickPay += 1200;
    }
    if (shovelsLevel == 1) {
        _payout += 0;
    }
}

-(void)payDoge {
    if (hashRate > 0) {
    _payout = (hashRate / 400);
    _doge += _payout;
    dogeAmount.string = [NSString stringWithFormat:@"%.2LF", _doge];
    totalMined += _payout;
    } else {
        _payout = 1;
        _doge += _payout;
        dogeAmount.string = [NSString stringWithFormat:@"%.2LF", _doge];
        Notify.string = [NSString stringWithFormat:@"%.2LF", _payout];
        totalMined+= _payout;
    }
}

/*-(void)animateDoge {
    double animAmt = (_payout / 5);
    dogeAmount.string = [NSString stringWithFormat:@"%.2Lf", _doge + animAmt];
    NSLog(@"Fire");
    dogeAmount.string = [NSString stringWithFormat:@"%.2LF", _doge];
    Notify.string = [NSString stringWithFormat:@"%.2F", animAmt];
}*/

-(void)digButton {
    _doge++;
    _doge += _bonusClickPay;
    dogeAmount.string = [NSString stringWithFormat:@"%.2LF", _doge];
    totalMined += 1 + _bonusClickPay;
    [self launchDoge];
}

-(void)Store {
    if (_mineTime) {
        [_mineTime invalidate];
        _mineTime = nil;
    }
    if (_mousePay) {
        [_mousePay invalidate];
        _mousePay = nil;
    }
    if (animTimer) {
        [animTimer invalidate];
        animTimer = nil;
    }
    CCScene *storeScene = [CCBReader loadAsScene:@"Store"];
    [[CCDirector sharedDirector] replaceScene:storeScene];
}

-(void)test {
    if (_mineTime) {
        [_mineTime invalidate];
        _mineTime = nil;
    }
    if (_mousePay) {
        [_mousePay invalidate];
        _mousePay = nil;
    }
    if (animTimer) {
        [animTimer invalidate];
        animTimer = nil;
    }
    CCScene *testScene = [CCBReader loadAsScene:@"test"];
    [[CCDirector sharedDirector] replaceScene:testScene];
}

-(void)Upgrades {
    if (_mineTime) {
        [_mineTime invalidate];
        _mineTime = nil;
    }
    if (_mousePay) {
        [_mousePay invalidate];
        _mousePay = nil;
    }
    if (animTimer) {
        [animTimer invalidate];
        animTimer = nil;
    }
    CCScene *upgradesScene = [CCBReader loadAsScene:@"Upgrades"];
    [[CCDirector sharedDirector] replaceScene:upgradesScene];
}

-(void)Stats {
    if (_mineTime) {
        [_mineTime invalidate];
        _mineTime = nil;
    }
    if (_mousePay) {
        [_mousePay invalidate];
        _mousePay = nil;
    }
    if (animTimer) {
        [animTimer invalidate];
        animTimer = nil;
    }
    CCScene *statsScene = [CCBReader loadAsScene:@"Stats"];
    [[CCDirector sharedDirector] replaceScene:statsScene];
}

- (void)launchDoge {
    if ((coinFall = FALSE)) {
    // loads the doge.ccb set up in spritebuilder
    CCNode* doge = [CCBReader load:@"Doge"];
    // positions the coin at a node
    doge.position = ccpAdd(_fountain.position, ccp(0, 0));
    
    // add the doge to the physicsnode on the screen
    [_physicsNode addChild:doge];
    
    // manually create & apply a force to launch the coin
    CGPoint launchDirection = ccp(1, 0);
    CGPoint force = ccpMult(launchDirection, 8000);
    [doge.physicsBody applyForce:force];
    } else {
        CCLOG(@"Falling is disabled.");
    }
}

- (void)upgradeMouseButton {
    _upgradePrice = (_mouseLvl * 400);
    _mouseLvl++;
    CCLOG(@"Upgraded mouse");
    mouseLvlLabel.string = [NSString stringWithFormat:@"%d", _mouseLvl];
    _upgradePrice = (_mouseLvl * 400);
    upgradePriceLabel.string = [NSString stringWithFormat:@"%d", _upgradePrice];
}

@end
