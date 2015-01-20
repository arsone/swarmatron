//
//  SomeInstrument.m
//  swarmatron
//
//  Created by James Zarakas on 1/20/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

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
        AKFMOscillator *fmOscillator;
        fmOscillator = [[AKFMOscillator alloc] init];
        [ self connect: fmOscillator];
        
        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource:fmOscillator];
        [self connect:audioOutput];
    }
    
    return self;
}

@end
