//
//  SomeInstrument.h
//  swarmatron
//
//  Created by James Zarakas on 1/20/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "AKInstrument.h"

@interface SomeInstrument : AKInstrument

@property (nonatomic, strong) AKInstrumentProperty *frequencyValue;
@property (nonatomic, strong) AKInstrumentProperty *modIndexValue;
@property (nonatomic, strong) AKInstrumentProperty *carrierMultValue;
@property AKFunctionTable *functionTable;

@end
