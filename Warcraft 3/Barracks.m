//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"
#import "Peasant.h"

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

- (Peasant *)trainPeasant {
    if ([self canTrainPeasant]) {
        Peasant *peasantTrained = [Peasant new];
        _gold = _gold - 90;
        _food = _food - 5;
        return peasantTrained;
    }
    return nil;
}

- (BOOL)canTrainPeasant {
    if (_food < 5) {
        return NO;
    }
    else if (_gold < 90) {
        return NO;
    }
    
    return YES;
}


@end
