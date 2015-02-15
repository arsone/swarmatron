//
//  VCOsc.h
//  swarmatron
//
//  Created by Adam Salberg on 2/7/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "AKFoundation.h"
#import "AKManager.h"

@interface VCOsc : AKInstrument

@property (nonatomic, strong) AKParameter *amplitude;
@property (nonatomic, strong) AKConstant *bandwidth;
@property (nonatomic, strong) AKParameter *frequency;
@property (nonatomic, strong) AKParameter *pulseWidth;
@property AKVCOscillatorWaveformType waveformType;

-(void)setOptionalWaveformType;

@end
 
