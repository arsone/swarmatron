//
//  RWKnobControl.h
//  KnobControl
//
//  Created by Adam Salberg on 1/19/15.
//  Copyright (c) 2015 RayWenderlich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWKnobControl : UIControl

#pragma mark - Knob value
/**
 contains the current value
 */
@property (nonatomic, assign) CGFloat value;

/**
 sets the value the knob should represent, with optional animation of the change.
 */
- (void)setValue:(CGFloat)value animated:(BOOL)animated;

#pragma mark - Value limits
/**
 the minimum value of the knob. Defaults to 0.
 */
@property (nonatomic, assign) CGFloat minimumValue;

/**
 the max value of the knob. Defaults to 1.
 */
@property (nonatomic, assign) CGFloat maximumValue;

#pragma mark - Knob behavior
/**
 contains a BOOL value indicating whether changes in the value of the knob generate continuous update events. Defaults to 'YES'.
 */
@property (nonatomic, assign, getter = isContinuous) BOOL continuous;

/**
 specifies the angle of the start of the knob control track. Defaults to -11π/8
 */
@property (nonatomic, assign) CGFloat startAngle;

/**
 specifies the end angle of the knob control track. Defaults to 3π/8
 */
@property (nonatomic, assign) CGFloat endAngle;

/**
 specifies the width in points of the knob control track. Defaults to 2.0
 */
@property (nonatomic, assign) CGFloat lineWidth;

/**
 specifies the length in points of the pointer on the knob. Defaults to 6.0
 */
@property (nonatomic, assign) CGFloat pointerLength;


@end
