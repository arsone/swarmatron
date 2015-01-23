//
//  ADSREnvelope.h
//  swarmatron
//
//  Created by Adam Salberg on 1/22/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "AKInstrument.h"

@interface ADSREnvelope : AKInstrument

@property AKConstant *attackDuration;
@property AKConstant *decayDuration;
@property AKConstant *delay;
@property AKConstant *releaseDuration;
@property AKConstant *sustainLevel;

- (instancetype)initWithAttackDuration:(AKConstant *)attackDuration decayDuration:(AKConstant *)decayDuration sustainLevel:(AKConstant *)sustainLevel releaseDuration:(AKConstant *)releaseDuration delay:(AKConstant *)delay;

@end
