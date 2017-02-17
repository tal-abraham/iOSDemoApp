//
//  calcConfigureViewController.h
//  tipCalculator
//
//  Created by Shishir Mahajan on 9/28/13.
//  Copyright (c) 2013 edu.asu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface calcConfigureViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *minimumTip;
@property (weak, nonatomic) IBOutlet UITextField *maximumTip;
@property (weak, nonatomic) IBOutlet UISwitch *includeTax;
@property (weak, nonatomic) IBOutlet UISwitch *includeDeductions;

@property (weak,nonatomic) NSString *minTip;
@property (weak,nonatomic) NSString *maxTip;
@property (weak,nonatomic) NSString *includeTaxConfigure;
@property (weak,nonatomic) NSString *includeDeductionsConfigure;

@end
