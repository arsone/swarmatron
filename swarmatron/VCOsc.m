//
//  VCOsc.m
//  swarmatron
//
//  Created by Adam Salberg on 2/7/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "VCOsc.h"


@implementation VCOsc

- (instancetype)init {
    self = [super init];
    if (self) {
        
        _frequencyValue = [[AKInstrumentProperty alloc] initWithValue:32.5 minimum:32.5 maximum:1000.0];
        
        _waveformType = [[AKInstrumentProperty alloc] initWithString:AKVCOscillatorWaveformTypeSawtooth];
        
        [self addProperty:_frequencyValue];
        [self addProperty:_waveformType];
        
        AKVCOscillator *vcOscillator;
        vcOscillator = [[AKVCOscillator alloc] init];
        vcOscillator.frequency = _frequencyValue;
        vcOscillator.waveformType = _waveformType;
        [self connect: vcOscillator];
        
        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource: vcOscillator];
        [self connect: audioOutput];
    }
    
    return self;
}

@end