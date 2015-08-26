//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"
#import "Barracks.h"
#import "Unit.h"

@implementation Footman

-(instancetype)init{
    self.healthPoints = 60;
    return self;
}

- (void)damage:(int)damage {
    self.healthPoints = self.healthPoints - 4;
}

- (void)attack:(Unit *)enemy withDamage:(int)damage {
    enemy.healthPoints = enemy.healthPoints - damage;
}

@end
