//
//  SomeInstrument.m
//  swarmatron
//
//  Created by James Zarakas on 1/20/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "AKFoundation.h"
#import "SomeInstrument.h"
#import "AKFMOscillator.h"
#import "AKAudioOutput.h"

@interface SomeInstrument ()

@end

@implementation SomeInstrument

- (instancetype) init
{
    self = [super init];
    
    if (self) {
        
        _frequencyValue = [[AKInstrumentProperty alloc] initWithValue:150
                                                              minimum:150
                                                              maximum:1200];
        
        _modIndexValue = [[AKInstrumentProperty alloc] initWithValue:0
                                                             minimum:0
                                                             maximum:30];
        
        _carrierMultValue = [[AKInstrumentProperty alloc] initWithValue:0.5
                                                                minimum:0
                                                                maximum:1];
        
        _amplitudeValue = [[AKInstrumentProperty alloc] initWithValue:0.1
                                                              minimum:0
                                                              maximum:0.5];
        
        [self addProperty:_frequencyValue];
        [self addProperty:_modIndexValue];
        [self addProperty:_carrierMultValue];
        [self addProperty:_amplitudeValue];
        
        AKFMOscillator *fmOscillator;
        fmOscillator = [[AKFMOscillator alloc] init];
        fmOscillator.baseFrequency = _frequencyValue;
        fmOscillator.modulationIndex = _modIndexValue;
        fmOscillator.carrierMultiplier = _carrierMultValue;
        [self connect: fmOscillator];
        
        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource:fmOscillator];
        [self connect:audioOutput];
    }
    
    return self;
}

@end
