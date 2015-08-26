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
    Footman *footmanTrained = [Footman new];
    _gold = _gold - 135;
    _food = _food - 2;
    return footmanTrained;
}

@end
