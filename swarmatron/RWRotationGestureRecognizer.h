//
//  RWRotationGestureRecognizer.h
//  KnobControl
//
//  Created by Adam Salberg on 1/19/15.
//  Copyright (c) 2015 RayWenderlich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWRotationGestureRecognizer : UIPanGestureRecognizer

@property (nonatomic, assign) CGFloat touchAngle;

@end
