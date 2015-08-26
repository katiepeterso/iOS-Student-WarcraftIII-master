//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"

@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    return self;
}

- (Footman *)trainFootman {
    if ([self canTrainFootman]) {
        Footman *footmanTrained = [Footman new];
        _gold = _gold - 135;
        _food = _food - 2;
        return footmanTrained;
    }
    return nil;
}

- (BOOL)canTrainFootman {
    if (_food < 2) {
        return NO;
    }
    else if (_gold < 135) {
        return NO;
    }
    
    return YES;
}

@end
