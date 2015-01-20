//
//  ViewController.m
//  swarmatron
//
//  Created by Adam Salberg on 1/17/15.
//  Copyright (c) 2015 Adam Salberg. All rights reserved.
//

#import "ViewController.h"
#import "AKFoundation.h"
#import "RWKnobControl.h"


@interface ViewController () {
//    AKFMOscillator *fm;
    RWKnobControl *_knobControl;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    fm = [[AKFMOscillator alloc] init];
//    [AKOrchestra addInstrument:fm];
//    [AKOrchestra start];
//    fm.amplitude.value = fm.amplitude.minimum;
//    [fm play];
    
    _knobControl = [[RWKnobControl alloc] initWithFrame:self.knobPlaceHolder.bounds];
    [self.knobPlaceHolder addSubview:_knobControl];
    
    _knobControl.lineWidth = 4.0;
    _knobControl.pointerLength = 8.0;
    self.view.tintColor = [UIColor colorWithRed:146.0/255.0f green:205.0/255.0f blue:207.0/255.0f alpha:1.0];
    
    [_knobControl addObserver:self forKeyPath:@"value" options:0 context:NULL];
    
    // hooks up the knob control
    [_knobControl addTarget:self
                     action:@selector(handleValueChanged:)
           forControlEvents:UIControlEventValueChanged];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleValueChanged:(id)sender {
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    if(object == _knobControl && [keyPath isEqualToString:@"value"]) {
        self.valueLabel.text = [NSString stringWithFormat:@"%0.2f", _knobControl.value];
    }
}


@end
