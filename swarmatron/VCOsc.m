//
//  VCOsc.m
//  swarmatron
//
//  Created by Adam Salberg on 2/7/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "VCOsc.h"


@implementation VCOsc

- (instancetype)initWithWaveformType:(AKVCOscillatorWaveformType)waveformType bandwidth:(AKConstant *)bandwidth pulseWidth:(AKParameter *)pulseWidth frequency:(AKParameter *)frequency amplitude:(AKParameter *)amplitude {
    self = [super init];
    if (self) {
        
        _amplitude = [[AKParameter alloc] initWithValue:1];
        _bandwidth = [[AKConstant alloc] initWithValue:0.5 minimum:0.0 maximum:0.5];
        _frequency = [[AKParameter alloc] initWithValue:32.5 minimum:32.5 maximum:1000.0];
        _pulseWidth = [[AKParameter alloc] initWithValue:0 minimum:0 maximum:1];
        _waveformType = AKVCOscillatorWaveformTypeSawtooth;
        
        [self addProperty:_frequency];
        [self addProperty:_amplitude];
        [self addProperty:_bandwidth];
        [self addProperty:_pulseWidth];
 
        AKVCOscillator *vcOscillator;
        vcOscillator = [[AKVCOscillator alloc] init];
        vcOscillator.amplitude = _amplitude;
        vcOscillator.bandwidth = _bandwidth;
        vcOscillator.frequency = _frequency;
        vcOscillator.pulseWidth = _pulseWidth;
        vcOscillator.waveformType = _waveformType;
        [self connect: vcOscillator];
        
        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource: vcOscillator];
        [self connect: audioOutput];
    }
    
    return self;
}

-(void)setOptionalWaveformType:(AKVCOscillatorWaveformType)waveformType {
    
    NSLog(@"waveform type: %u", _waveformType);
}

@end