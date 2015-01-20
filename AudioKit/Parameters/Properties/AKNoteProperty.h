//
//  AKNoteProperty.h
//  AudioKit
//
//  Created by Aurelius Prochazka on 9/22/12.
//  Copyright (c) 2012 Aurelius Prochazka. All rights reserved.
//

#import "AKConstant.h"

/** Note properties are properties of an instrument that are defined
 per each note generated by an instrument.
 */

@class AKNote;

@interface AKNoteProperty : AKConstant 

/// Optional pretty name for properties useful for debugging.
@property (nonatomic, strong) NSString *name;

/// Note this property belongs to
@property (nonatomic, strong) AKNote *note;

/// Internal reference number
@property (assign) int pValue;


/// Set the value at a future time
/// @param floatValue The value that will be set
/// @param time The delay time after which the value will be set.
- (void)setValue:(float)floatValue afterDelay:(float)time;

+ (instancetype)duration;

@end