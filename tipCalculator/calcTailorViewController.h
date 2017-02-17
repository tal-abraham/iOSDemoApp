//
//  calcTailorViewController.h
//  tipCalculator
//
//  Created by Shishir Mahajan on 9/30/13.
//  Copyright (c) 2013 edu.asu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface calcTailorViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *guestName1;
@property (weak, nonatomic) IBOutlet UITextField *guestName2;
@property (weak, nonatomic) IBOutlet UITextField *guestName3;
@property (weak, nonatomic) IBOutlet UITextField *guestName4;
@property (weak, nonatomic) IBOutlet UITextField *guestName5;
@property (weak, nonatomic) IBOutlet UITextField *guestName6;
@property (weak, nonatomic) IBOutlet UITextField *guestName7;
@property (weak, nonatomic) IBOutlet UITextField *guestName8;
@property (weak, nonatomic) IBOutlet UITextField *guestName9;


@property (weak, nonatomic) IBOutlet UILabel *tipGuest1;
@property (weak, nonatomic) IBOutlet UILabel *tipGuest2;
@property (weak, nonatomic) IBOutlet UILabel *tipGuest3;
@property (weak, nonatomic) IBOutlet UILabel *tipGuest4;
@property (weak, nonatomic) IBOutlet UILabel *tipGuest5;
@property (weak, nonatomic) IBOutlet UILabel *tipGuest6;
@property (weak, nonatomic) IBOutlet UILabel *tipGuest7;
@property (weak, nonatomic) IBOutlet UILabel *tipGuest8;
@property (weak, nonatomic) IBOutlet UILabel *tipGuest9;


@property (weak,nonatomic) NSString *noOfGuestsTailor;
@property (weak,nonatomic) NSString *totalTipTailor;


@property (weak,nonatomic) NSString *guestNameTailor1;
@property (weak,nonatomic) NSString *guestNameTailor2;
@property (weak,nonatomic) NSString *guestNameTailor3;
@property (weak,nonatomic) NSString *guestNameTailor4;
@property (weak,nonatomic) NSString *guestNameTailor5;
@property (weak,nonatomic) NSString *guestNameTailor6;
@property (weak,nonatomic) NSString *guestNameTailor7;
@property (weak,nonatomic) NSString *guestNameTailor8;
@property (weak,nonatomic) NSString *guestNameTailor9;

@property (weak,nonatomic) NSString *tipGuestTailor1;
@property (weak,nonatomic) NSString *tipGuestTailor2;
@property (weak,nonatomic) NSString *tipGuestTailor3;
@property (weak,nonatomic) NSString *tipGuestTailor4;
@property (weak,nonatomic) NSString *tipGuestTailor5;
@property (weak,nonatomic) NSString *tipGuestTailor6;
@property (weak,nonatomic) NSString *tipGuestTailor7;
@property (weak,nonatomic) NSString *tipGuestTailor8;
@property (weak,nonatomic) NSString *tipGuestTailor9;

@property (weak, nonatomic) IBOutlet UISlider *guest1Slider;
@property (weak, nonatomic) IBOutlet UISlider *guest2Slider;
@property (weak, nonatomic) IBOutlet UISlider *guest3Slider;
@property (weak, nonatomic) IBOutlet UISlider *guest4Slider;
@property (weak, nonatomic) IBOutlet UISlider *guest5Slider;
@property (weak, nonatomic) IBOutlet UISlider *guest6Slider;
@property (weak, nonatomic) IBOutlet UISlider *guest7Slider;
@property (weak, nonatomic) IBOutlet UISlider *guest8Slider;
@property (weak, nonatomic) IBOutlet UISlider *guest9Slider;


@end
