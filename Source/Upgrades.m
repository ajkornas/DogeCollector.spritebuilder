//
//  Upgrades.m
//  DogeCollector
//
//  Created by Albert Kornas on 2/16/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Upgrades.h"
#import "Store.h"


@implementation Upgrades {
    CCLabelTTF *upPickaxeTitle;
    CCLabelTTF *upShovelsTitle;
    CCLabelTTF *upDynamiteTitle;
    CCLabelTTF *upMoonboardTitle;
    CCLabelTTF *upFlaskTitle;
    CCLabelTTF *upMoonTitle;
    CCLabelTTF *upTimeTitle;
    CCLabelTTF *diffTitle;
    CCLabelTTF *researchTitle;
    CCLabelTTF *upTipTitle;
    CCLabelTTF *balanceLabel;
}

int pickaxeLevel, shovelsLevel, dynamiteLevel, computerLevel, labLevel, MoonLevel, timeLevel, diffLevel, tipsLevel, researchLevel;

-(void) back {
    CCScene *digScene = [CCBReader loadAsScene:@"MainScene"];
    [[CCDirector sharedDirector] replaceScene:digScene];
}

- (void)didLoadFromCCB {
    CCLOG(@"Loaded from CCB");
    if (pickaxeLevel == 0) {
            upPickaxeTitle.string = @"Steel Pickaxe - Ð750";
    } else if (pickaxeLevel == 1) {
            upPickaxeTitle.string = @"Gold Pickaxe - Ð15,000";
    } else if (pickaxeLevel == 2) {
            upPickaxeTitle.string = @"GPU Pickaxe - Ð120,000";
    } else if (pickaxeLevel == 3) {
            upPickaxeTitle.string = @"Moon Pickaxe - Ð1,500,000";
    } else if (pickaxeLevel == 4) {
            upPickaxeTitle.string = @"Max Level Reached!";
            upPickaxeTitle.color = [CCColor redColor];
    }
    
    if (shovelsLevel == 0) {
            upShovelsTitle.string = @"Gold Shovel - Ð600";
    } else if (shovelsLevel == 1) {
            upShovelsTitle.string = @"GPU Shovel - Ð10,000";
    } else if (shovelsLevel == 2) {
            upShovelsTitle.string = @"Moon Shovel - Ð35,000";
    } else if (shovelsLevel == 3) {
            upShovelsTitle.string = @"Moon Shovel V2 - Ð500,000";
    } else if (shovelsLevel == 4) {
            upShovelsTitle.string = @"wow shovel - Ð35,000,000";
    } else if (shovelsLevel == 5) {
            upShovelsTitle.string = @"Max Level Reached!";
            upShovelsTitle.color = [CCColor redColor];
    }
    
    if (dynamiteLevel == 0) {
        upDynamiteTitle.string = @"B Grade Dynamite - Ð600";
    } else if (dynamiteLevel == 1) {
        upDynamiteTitle.string = @"A Grade Dynamite - Ð10,000";
    } else if (dynamiteLevel == 2) {
        upDynamiteTitle.string = @"Industrial Dynamite - Ð35,000";
    } else if (dynamiteLevel == 3) {
        upDynamiteTitle.string = @"E.T Dynamite - Ð500,000";
    } else if (dynamiteLevel == 4) {
        upDynamiteTitle.string = @"Nuclear Blasts - Ð35,000,000";
    } else if (dynamiteLevel == 5) {
        upDynamiteTitle.string = @"Max Level Reached!";
        upDynamiteTitle.color = [CCColor redColor];
    }
    
    
    if (computerLevel == 0) {
        upMoonboardTitle.string = @"Dogecard 7970 - Ð60,000";
    } else if (computerLevel == 1) {
        upMoonboardTitle.string = @"Dogecard 290x - Ð300,000";
    } else if (computerLevel == 2) {
        upMoonboardTitle.string = @"Rocket Computer - Ð850,000";
    } else if (computerLevel == 3) {
        upMoonboardTitle.string = @"Rover Computer - Ð5,000,000";
    } else if (computerLevel == 4) {
        upMoonboardTitle.string = @"Max Level Reached!";
        upMoonboardTitle.color = [CCColor redColor];
    }
    
    
    if (labLevel == 0) {
        upFlaskTitle.string = @"Larger Flasks - Ð15,000";
    } else if (labLevel == 1) {
        upFlaskTitle.string = @"Shibe Employment - Ð400,000";
    } else if (labLevel == 2) {
        upFlaskTitle.string = @"Moon Substances - Ð20,000,000";
    } else if (labLevel == 3) {
        upFlaskTitle.string = @"Max Level Reached!";
        upFlaskTitle.color = [CCColor redColor];
    }
    
    
    if (MoonLevel == 0) {
        upMoonTitle.string = @"Larger Moon - Ð200,000";
    } else if (MoonLevel == 1) {
        upMoonTitle.string = @"Giant Moon - Ð3,000,000";
    } else if (MoonLevel == 2) {
        upMoonTitle.string = @"Renewable Moon - Ð45,000,000";
    } else if (MoonLevel == 3) {
        upMoonTitle.string = @"More Moons - Ð230,000,000";
    } else if (MoonLevel == 4) {
        upMoonTitle.string = @"World Moon - Ð1,000,000,000";
    } else if (MoonLevel == 5) {
        upMoonTitle.string = @"Max Level Reached!";
        upMoonTitle.color = [CCColor redColor];
    }
    
    if (timeLevel == 0) {
        upTimeTitle.string = @"Time Condensing - Ð5,000,000";
    } else if (timeLevel == 1) {
        upTimeTitle.string = @"More Buttons - Ð60,000,000";
    } else if (timeLevel == 2) {
        upTimeTitle.string = @"Red Button - Ð400,000,000";
    } else if (timeLevel == 3) {
        upTimeTitle.string = @"Moon Duplication - Ð4,500,000,000";
    } else if (timeLevel == 4) {
        upTimeTitle.string = @"wow such moon - Ð999,999,999,999";
    } else if (timeLevel == 5) {
        upTimeTitle.string = @"Max Level Reached!";
        upTimeTitle.color = [CCColor redColor];
    }
    
    if (diffLevel == 0) {
        diffTitle.string = @"Lower Difficulty - Ð25,000";
    } else if (diffLevel == 1) {
        diffTitle.string = @"Lower Difficulty - Ð250,000";
    } else if (diffLevel == 2) {
        diffTitle.string = @"Lower Difficulty - Ð1,000,000";
    } else if (diffLevel == 3) {
        diffTitle.string = @"Lower Difficulty - Ð20,000,000";
    } else if (diffLevel == 4) {
        diffTitle.string = @"Lowest Difficulty - Ð500,000,000";
    } else if (diffLevel == 5) {
        diffTitle.string = @"Max Level Reached!";
        diffTitle.color = [CCColor redColor];
    }
    
    if (tipsLevel == 0) {
        upTipTitle.string = @"Generous Tipper - Ð25,000";
    } else if (tipsLevel == 1) {
        upTipTitle.string = @"Generous Tipper - Ð250,000";
    } else if (tipsLevel == 2) {
        upTipTitle.string = @"Generous Tipper - Ð1,000,000";
    } else if (tipsLevel == 3) {
        upTipTitle.string = @"Generous Tipper - Ð20,000,000";
    } else if (tipsLevel == 4) {
        upTipTitle.string = @"SaveThemHood - Ð500,000,000";
    } else if (tipsLevel == 5) {
        upTipTitle.string = @"Max Level Reached!";
        upTipTitle.color = [CCColor redColor];
    }
    
    if (researchLevel == 0) {
        researchTitle.string = @"Research - Ð25,000";
    } else if (researchLevel == 1) {
        researchTitle.string = @"Research - Ð250,000";
    } else if (researchLevel == 2) {
        researchTitle.string = @"Research - Ð1,000,000";
    } else if (researchLevel == 3) {
        researchTitle.string = @"Research - Ð20,000,000";
    } else if (researchLevel == 4) {
        researchTitle.string = @"Wowsearch - Ð500,000,000";
    } else if (researchLevel == 5) {
        researchTitle.string = @"Max Level Reached!";
        researchTitle.color = [CCColor redColor];
    }
    if (_doge < 1000000000000)
        balanceLabel.string = [NSString stringWithFormat:@"%.2Lf", _doge];
    else
        balanceLabel.string = @"A lot!";
    
}
/*
 * UPGRADE BUY BUTTONS
*/

-(void)upgradePickaxeButton {
    if (pickaxeLevel == 0) {
        if (_doge >= 750) { //750
            pickaxeLevel++;
            _doge -= 750;
        }
    } else if (pickaxeLevel == 1) {
       if (_doge >= 15000) {
           pickaxeLevel++;
           _doge -= 15000;
        }
    } else if (pickaxeLevel == 2) {
        if (_doge >= 120000) {
            pickaxeLevel++;
            _doge -= 120000;
        }
    } else if (pickaxeLevel == 3) {
        if (_doge >= 1500000) {
            pickaxeLevel++;
            _doge -= 1500000;
        }
    } else {
        NSLog(@"no level found or fully upgraded");
    }
        [self didLoadFromCCB];
}


-(void)upgradeShovelsButton {
    CCLOG(@"Shovels");
    if (shovelsLevel == 0) {
        if (_doge >= 50) {
            _doge -= 50;
            shovelsLevel++;
        }
    } else if (shovelsLevel == 1) {
        if (_doge >= 600) {
            _doge -= 600;
            shovelsLevel++;
        }
    } else if (shovelsLevel == 2) {
        if (_doge >= 10000) {
            _doge -= 10000;
            shovelsLevel++;
        }
    } else if (shovelsLevel == 3) {
        if (_doge >= 35000) {
            _doge -= 35000;
            shovelsLevel++;
        }
    } else if (shovelsLevel == 4) {
        if (_doge >= 500000) {
            _doge -= 500000;
            shovelsLevel++;
        }
    } else if (shovelsLevel == 5) {
        if (_doge >= 35000000) {
            _doge -= 35000000;
            shovelsLevel++;
    }
    }
            [self didLoadFromCCB];
}

-(void)upgradeDynamiteButton {
    if (dynamiteLevel == 0) {
        if (_doge >= 600) {
            _doge -= 600;
            dynamiteLevel++;
        }
    } else if (dynamiteLevel == 1) {
        if (_doge >= 10000) {
            _doge -= 10000;
            dynamiteLevel++;
        }
    } else if (dynamiteLevel == 2) {
        if (_doge >= 35000) {
            _doge -= 35000;
            dynamiteLevel++;
        }
    } else if (dynamiteLevel == 3) {
        if (_doge >= 500000) {
            _doge -= 500000;
            dynamiteLevel++;
        }
    } else if (dynamiteLevel == 4) {
        if (_doge >= 35000000) {
            _doge -= 35000000;
            dynamiteLevel++;
        }
    }
            [self didLoadFromCCB];
}

-(void)upgradeComputerButton {
    if (computerLevel == 0) {
        if (_doge >= 600) {
            _doge -= 600;
            computerLevel++;
        }
    } else if (computerLevel == 1) {
        if (_doge >= 10000) {
            _doge -= 10000;
            computerLevel++;
        }
    } else if (computerLevel == 2) {
        if (_doge >= 35000) {
            _doge -= 35000;
            computerLevel++;
        }
    } else if (computerLevel == 3) {
        if (_doge >= 500000) {
            _doge -= 500000;
            computerLevel++;
        }
    } else if (computerLevel == 4) {
        if (_doge >= 35000000) {
            _doge -= 35000000;
            computerLevel++;
        }
    }
            [self didLoadFromCCB];
}

-(void)upgradeLabButton {
    if (labLevel == 0) {
        if (_doge >= 15000) {
            _doge -= 15000;
            labLevel++;
        }
    } else if (labLevel == 1) {
        if (_doge >= 400000) {
            _doge -= 10000;
            labLevel++;
        }
    } else if (labLevel == 2) {
        if (_doge >= 20000000) {
            _doge -= 35000;
            labLevel++;
        }
    }
            [self didLoadFromCCB];
}

-(void)upgradeMoonButton {
    if (MoonLevel == 0) {
        if (_doge >= 200000) {
            _doge -= 200000;
            MoonLevel++;
        }
    } else if (MoonLevel == 1) {
        if (_doge >= 3000000) {
            _doge -= 3000000;
            MoonLevel++;
        }
    } else if (MoonLevel == 2) {
        if (_doge >= 45000000) {
            _doge -= 45000000;
            MoonLevel++;
        }
    } else if (MoonLevel == 3) {
        if (_doge >= 230000000) {
            _doge -= 230000000;
            MoonLevel++;
        }
    } else if (MoonLevel == 4) {
        if (_doge >= 1000000000) {
            _doge -= 1000000000;
            MoonLevel++;
        }
    }
            [self didLoadFromCCB];
}

-(void)upgradeTimeButton {
    
    if (timeLevel == 0) {
        if (_doge >= 5000000) {
            _doge -= 5000000;
            timeLevel++;
        }
    } else if (timeLevel == 1) {
        if (_doge >= 60000000) {
            _doge -= 60000000;
            timeLevel++;
        }
    } else if (timeLevel == 2) {
        if (_doge >= 400000000) {
            _doge -= 400000000;
            timeLevel++;
        }
    } else if (timeLevel == 3) {
        if (_doge >= 4500000000) {
            _doge -= 4500000000;
            timeLevel++;
        }
    } else if (timeLevel == 4) {
        if (_doge >= 999999999999) {
            _doge -= 999999999999;
            timeLevel++;
        }
    }
            [self didLoadFromCCB];
    
}

-(void)upgradeDifficultyButton {
    
    if (diffLevel == 0) {
        if (_doge >= 25000) {
            _doge -= 25000;
            diffLevel++;
        }
    } else if (diffLevel == 1) {
        if (_doge >= 250000) {
            _doge -= 250000;
            diffLevel++;
        }
    } else if (diffLevel == 2) {
        if (_doge >= 1000000) {
            _doge -= 1000000;
            diffLevel++;
        }
    } else if (diffLevel == 3) {
        if (_doge >= 20000000) {
            _doge -= 20000000;
            diffLevel++;
        }
    } else if (diffLevel == 4) {
        if (_doge >= 500000000) {
            _doge -= 500000000;
            diffLevel++;
        }
    }
    [self didLoadFromCCB];
    
}

-(void)upgradeTipsButton {
    if (tipsLevel == 0) {
        if (_doge >= 25000) {
            _doge -= 25000;
            tipsLevel++;
        }
    } else if (tipsLevel == 1) {
        if (_doge >= 250000) {
            _doge -= 250000;
            tipsLevel++;
        }
    } else if (tipsLevel == 2) {
        if (_doge >= 1000000) {
            _doge -= 1000000;
            tipsLevel++;
        }
    } else if (tipsLevel == 3) {
        if (_doge >= 20000000) {
            _doge -= 20000000;
            tipsLevel++;
        }
    } else if (tipsLevel == 4) {
        if (_doge >= 500000000) {
            _doge -= 500000000;
            tipsLevel++;
        }
    }
    [self didLoadFromCCB];
}

-(void)upgradeResearchButton {
    if (researchLevel == 0) {
        if (_doge >= 25000) {
            _doge -= 25000;
            researchLevel++;
        }
    } else if (researchLevel == 1) {
        if (_doge >= 250000) {
            _doge -= 250000;
            researchLevel++;
        }
    } else if (researchLevel == 2) {
        if (_doge >= 1000000) {
            _doge -= 1000000;
            researchLevel++;
        }
    } else if (researchLevel == 3) {
        if (_doge >= 20000000) {
            _doge -= 20000000;
            researchLevel++;
        }
    } else if (researchLevel == 4) {
        if (_doge >= 500000000) {
            _doge -= 500000000;
            researchLevel++;
        }
    }
    [self didLoadFromCCB];
}

/*
 * END OF BUY BUTTONS
*/


@end
