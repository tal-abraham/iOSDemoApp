//
//  calcViewController.h
//  tipCalculator
//
//  Created by Shishir Mahajan on 9/26/13.
//  Copyright (c) 2013 edu.asu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface calcViewController : UIViewController <UITextFieldDelegate>

@property (weak,nonatomic) IBOutlet UITextField *noOfGuests;
@property (weak,nonatomic) IBOutlet UITextField *billTotal;
@property (weak,nonatomic) IBOutlet UITextField *billDeductions;
@property (weak,nonatomic) IBOutlet UITextField *tax;

@property (weak, nonatomic) IBOutlet UILabel *tipRate;
@property (weak, nonatomic) IBOutlet UILabel *finalBillAmount;
@property (weak, nonatomic) IBOutlet UILabel *totalTip;
@property (weak, nonatomic) IBOutlet UILabel *tipPerPerson;
@property (weak, nonatomic) IBOutlet UILabel *totalBillAndTip;

@property (weak, nonatomic) IBOutlet UISlider *qualityOfService;


@end
