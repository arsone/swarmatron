//
//  ADSREnvelope.m
//  swarmatron
//
//  Created by Adam Salberg on 1/22/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "ADSREnvelope.h"
#import "AKInstrument.h"

@implementation ADSREnvelope

- (instancetype) init {
    self = [super init];
    
    if (self) {
        _attackDuration = [[AKConstant alloc] initWithValue:0.1
                                                    minimum:0.1
                                                    maximum:4.0];
        
        _decayDuration = [[AKConstant alloc] initWithValue:0.1
                                                   minimum:0
                                                   maximum:2.0];
        
        _delay = [[AKConstant alloc] initWithValue:0
                                           minimum:0
                                           maximum:4.0];
        
        _releaseDuration = [[AKConstant alloc] initWithValue:1.0
                                                     minimum:0
                                                     maximum:4.0];
        
        _sustainLevel = [[AKConstant alloc] initWithValue:0.5
                                                  minimum:0
                                                  maximum:1.0];
    }
    return self;
}


- (void)setOptionalAttackDuration:(AKConstant *)attackDuration {
    attackDuration = _attackDuration;
}

- (void)setOptionalDecayDuration:(AKConstant *)decayDuration {
    decayDuration = _decayDuration;
}

- (void)setOptionalDelay:(AKConstant *)delay {
    delay = _delay;
}

- (void)setOptionalReleaseDuration:(AKConstant *)releaseDuration {
    releaseDuration = _releaseDuration;
}

- (void)setOptionalSustainLevel:(AKConstant *)sustainLevel {
    sustainLevel = _sustainLevel;
}

@end
