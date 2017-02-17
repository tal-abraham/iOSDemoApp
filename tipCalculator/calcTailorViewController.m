//
//  calcTailorViewController.m
//  tipCalculator
//
//  Created by Shishir Mahajan on 9/30/13.
//  Copyright (c) 2013 edu.asu. All rights reserved.
//

#import "calcTailorViewController.h"

@interface calcTailorViewController ()

@end

@implementation calcTailorViewController

 int noOfGuestsInTailor;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.guestName1.delegate=self;
    self.guestName2.delegate=self;
    self.guestName3.delegate=self;
    self.guestName4.delegate=self;
    self.guestName5.delegate=self;
    self.guestName6.delegate=self;
    self.guestName7.delegate=self;
    self.guestName8.delegate=self;
    self.guestName9.delegate=self;

    
	// Do any additional setup after loading the view.
    noOfGuestsInTailor=[self.noOfGuestsTailor integerValue];
    if(noOfGuestsInTailor==1)
    {
    self.guestName1.text=self.guestNameTailor1;
    self.tipGuest1.text=self.tipGuestTailor1;
    }
    else if(noOfGuestsInTailor==2)
    {
    self.guestName1.text=self.guestNameTailor1;
    self.tipGuest1.text=self.tipGuestTailor1;
    self.guestName2.text=self.guestNameTailor2;
    self.tipGuest2.text=self.tipGuestTailor2;
    }
    else if(noOfGuestsInTailor==3)
    {
    self.guestName1.text=self.guestNameTailor1;
    self.tipGuest1.text=self.tipGuestTailor1;
    self.guestName2.text=self.guestNameTailor2;
    self.tipGuest2.text=self.tipGuestTailor2;
    self.guestName3.text=self.guestNameTailor3;
    self.tipGuest3.text=self.tipGuestTailor3;
    }
    else if(noOfGuestsInTailor==4)
    {
    self.guestName1.text=self.guestNameTailor1;
    self.tipGuest1.text=self.tipGuestTailor1;
    self.guestName2.text=self.guestNameTailor2;
    self.tipGuest2.text=self.tipGuestTailor2;
    self.guestName3.text=self.guestNameTailor3;
    self.tipGuest3.text=self.tipGuestTailor3;
    self.guestName4.text=self.guestNameTailor4;
    self.tipGuest4.text=self.tipGuestTailor4;
    }
    else if(noOfGuestsInTailor==5)
    {
        self.guestName1.text=self.guestNameTailor1;
        self.tipGuest1.text=self.tipGuestTailor1;
        self.guestName2.text=self.guestNameTailor2;
        self.tipGuest2.text=self.tipGuestTailor2;
        self.guestName3.text=self.guestNameTailor3;
        self.tipGuest3.text=self.tipGuestTailor3;
        self.guestName4.text=self.guestNameTailor4;
        self.tipGuest4.text=self.tipGuestTailor4;
        self.guestName5.text=self.guestNameTailor5;
        self.tipGuest5.text=self.tipGuestTailor5;
    }
    else if(noOfGuestsInTailor==6)
    {
        self.guestName1.text=self.guestNameTailor1;
        self.tipGuest1.text=self.tipGuestTailor1;
        self.guestName2.text=self.guestNameTailor2;
        self.tipGuest2.text=self.tipGuestTailor2;
        self.guestName3.text=self.guestNameTailor3;
        self.tipGuest3.text=self.tipGuestTailor3;
        self.guestName4.text=self.guestNameTailor4;
        self.tipGuest4.text=self.tipGuestTailor4;
        self.guestName5.text=self.guestNameTailor5;
        self.tipGuest5.text=self.tipGuestTailor5;
        self.guestName6.text=self.guestNameTailor6;
        self.tipGuest6.text=self.tipGuestTailor6;
    }
    else if(noOfGuestsInTailor==7)
    {
        self.guestName1.text=self.guestNameTailor1;
        self.tipGuest1.text=self.tipGuestTailor1;
        self.guestName2.text=self.guestNameTailor2;
        self.tipGuest2.text=self.tipGuestTailor2;
        self.guestName3.text=self.guestNameTailor3;
        self.tipGuest3.text=self.tipGuestTailor3;
        self.guestName4.text=self.guestNameTailor4;
        self.tipGuest4.text=self.tipGuestTailor4;
        self.guestName5.text=self.guestNameTailor5;
        self.tipGuest5.text=self.tipGuestTailor5;
        self.guestName6.text=self.guestNameTailor6;
        self.tipGuest6.text=self.tipGuestTailor6;
        self.guestName7.text=self.guestNameTailor7;
        self.tipGuest7.text=self.tipGuestTailor7;
    }
    else if(noOfGuestsInTailor==8)
    {
        self.guestName1.text=self.guestNameTailor1;
        self.tipGuest1.text=self.tipGuestTailor1;
        self.guestName2.text=self.guestNameTailor2;
        self.tipGuest2.text=self.tipGuestTailor2;
        self.guestName3.text=self.guestNameTailor3;
        self.tipGuest3.text=self.tipGuestTailor3;
        self.guestName4.text=self.guestNameTailor4;
        self.tipGuest4.text=self.tipGuestTailor4;
        self.guestName5.text=self.guestNameTailor5;
        self.tipGuest5.text=self.tipGuestTailor5;
        self.guestName6.text=self.guestNameTailor6;
        self.tipGuest6.text=self.tipGuestTailor6;
        self.guestName7.text=self.guestNameTailor7;
        self.tipGuest7.text=self.tipGuestTailor7;
        self.guestName8.text=self.guestNameTailor8;
        self.tipGuest8.text=self.tipGuestTailor8;
    }
    else if(noOfGuestsInTailor==9)
    {
        self.guestName1.text=self.guestNameTailor1;
        self.tipGuest1.text=self.tipGuestTailor1;
        self.guestName2.text=self.guestNameTailor2;
        self.tipGuest2.text=self.tipGuestTailor2;
        self.guestName3.text=self.guestNameTailor3;
        self.tipGuest3.text=self.tipGuestTailor3;
        self.guestName4.text=self.guestNameTailor4;
        self.tipGuest4.text=self.tipGuestTailor4;
        self.guestName5.text=self.guestNameTailor5;
        self.tipGuest5.text=self.tipGuestTailor5;
        self.guestName6.text=self.guestNameTailor6;
        self.tipGuest6.text=self.tipGuestTailor6;
        self.guestName7.text=self.guestNameTailor7;
        self.tipGuest7.text=self.tipGuestTailor7;
        self.guestName8.text=self.guestNameTailor8;
        self.tipGuest8.text=self.tipGuestTailor8;
        self.guestName9.text=self.guestNameTailor9;
        self.tipGuest9.text=self.tipGuestTailor9;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    {

        if(self.guestName1==textField)
        {
            [self.guestName1 resignFirstResponder];
        }
        if(self.guestName2==textField)
        {
            [self.guestName2 resignFirstResponder];
        }
        if(self.guestName3==textField)
        {
            [self.guestName3 resignFirstResponder];
        }
        if(self.guestName4==textField)
        {
            [self.guestName4 resignFirstResponder];
        }
        if(self.guestName5==textField)
        {
            [self.guestName5 resignFirstResponder];
        }
        if(self.guestName6==textField)
        {
            [self.guestName6 resignFirstResponder];
        }
        if(self.guestName7==textField)
        {
            [self.guestName7 resignFirstResponder];
        }
        if(self.guestName8==textField)
        {
            [self.guestName8 resignFirstResponder];
        }
        if(self.guestName9==textField)
        {
            [self.guestName9 resignFirstResponder];
        }
    }
    return YES;
}

- (IBAction)guest1Slider:(id)sender {
    
    self.guest1Slider.minimumValue=0;
    self.guest1Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest1.text=[NSString stringWithFormat:@"%0.02f",self.guest1Slider.value];
    
}

- (IBAction)guest2Slider:(id)sender {
    
    self.guest2Slider.minimumValue=0;
    self.guest2Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest2.text=[NSString stringWithFormat:@"%0.02f",self.guest2Slider.value];
    
}

- (IBAction)guest3Slider:(id)sender {
    
    self.guest3Slider.minimumValue=0;
    self.guest3Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest3.text=[NSString stringWithFormat:@"%0.02f",self.guest3Slider.value];
    
}

- (IBAction)guest4Slider:(id)sender {
    
    self.guest4Slider.minimumValue=0;
    self.guest4Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest4.text=[NSString stringWithFormat:@"%0.02f",self.guest4Slider.value];
    
}

- (IBAction)guest5Slider:(id)sender {
    
    self.guest5Slider.minimumValue=0;
    self.guest5Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest5.text=[NSString stringWithFormat:@"%0.02f",self.guest5Slider.value];
}

- (IBAction)guest6Slider:(id)sender {
    
    self.guest6Slider.minimumValue=0;
    self.guest6Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest6.text=[NSString stringWithFormat:@"%0.02f",self.guest6Slider.value];
}

- (IBAction)guest7Slider:(id)sender {
    
    self.guest7Slider.minimumValue=0;
    self.guest7Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest7.text=[NSString stringWithFormat:@"%0.02f",self.guest7Slider.value];
}

- (IBAction)guest8Slider:(id)sender {
    
    self.guest8Slider.minimumValue=0;
    self.guest8Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest8.text=[NSString stringWithFormat:@"%0.02f",self.guest8Slider.value];
}

- (IBAction)guest9Slider:(id)sender {
    
    self.guest9Slider.minimumValue=0;
    self.guest9Slider.maximumValue=[self.totalTipTailor doubleValue];
    self.tipGuest9.text=[NSString stringWithFormat:@"%0.02f",self.guest9Slider.value];
}


@end
