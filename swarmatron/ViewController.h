//
//  ViewController.h
//  swarmatron
//
//  Created by Adam Salberg on 1/17/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *knobPlaceHolder;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@property (weak, nonatomic) IBOutlet UISwitch *oscBank;

@property (weak, nonatomic) IBOutlet UISwitch *waveformType;

- (IBAction)sawSineToggled:(id)sender;

@end

