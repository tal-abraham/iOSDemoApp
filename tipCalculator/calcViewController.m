//
//  calcViewController.m
//  tipCalculator
//
//  Created by Shishir Mahajan on 9/26/13.
//  Copyright (c) 2013 edu.asu. All rights reserved.
//

#import "calcViewController.h"
#import "calcTailorViewController.h"
#import "calcConfigureViewController.h"
#import "tipModel.h"

@interface calcViewController ()

@property (nonatomic,strong) tipModel *model;

@end

@implementation calcViewController

@synthesize noOfGuests=_noOfGuests;
@synthesize billTotal=_billTotal;
@synthesize billDeductions=_billDeductions;
@synthesize tax=_tax;
@synthesize model=_model;

double billTotal;
double billDeductions;
double tax;
double finalAmount;
double finalAmountForDisplay;
double tipRate=20.0;
double totalTip=0;
double tipPerPerson=0;
double totalBillAndTip=0;

NSString *minTip=@"0";
NSString *maxTip=@"40";
BOOL includeTax=0;
BOOL includeDeductions=1;

NSString *guestName1;
NSString *guestName2;
NSString *guestName3;
NSString *guestName4;
NSString *guestName5;
NSString *guestName6;
NSString *guestName7;
NSString *guestName8;
NSString *guestName9;

NSString *tipGuest;
NSString *tipGuest1;
NSString *tipGuest2;
NSString *tipGuest3;
NSString *tipGuest4;
NSString *tipGuest5;
NSString *tipGuest6;
NSString *tipGuest7;
NSString *tipGuest8;
NSString *tipGuest9;

-(tipModel *)model
{
    if(!_model)
    {
        _model=[[tipModel alloc]init];
    }
    return _model;
}


- (IBAction)calculateTip:(id)sender {
    
    if ([self.noOfGuests.text integerValue] < 1)
    {
        UIAlertView *noOfGuestsLessThanOneAlert = [[UIAlertView alloc]
                                                   initWithTitle: @"Warning!"
                                                   message: @"Number of Guests should be atleast one."
                                                   delegate: nil
                                                   cancelButtonTitle:@"Okay"
                                                   otherButtonTitles:nil];
        [noOfGuestsLessThanOneAlert show];
    }
    else if ([self.noOfGuests.text integerValue] > 9)
    {
        UIAlertView *noOfGuestsMoreThanNineAlert = [[UIAlertView alloc]
                                                    initWithTitle: @"Warning!"
                                                    message: @"Number of Guests cannot be more than nine."
                                                    delegate: nil
                                                    cancelButtonTitle:@"Okay"
                                                    otherButtonTitles:nil];
        [noOfGuestsMoreThanNineAlert show];
    }
    else if ([self.billTotal.text doubleValue] <= 0.0)
    {
        UIAlertView *billTotalZeroAlert = [[UIAlertView alloc]
                                           initWithTitle: @"Warning!"
                                           message: @"Bill total should be more than zero."
                                           delegate: nil
                                           cancelButtonTitle:@"Okay"
                                           otherButtonTitles:nil];
        [billTotalZeroAlert show];
    }
    else if ([self.billTotal.text doubleValue] <= [self.billDeductions.text doubleValue])
    {
        UIAlertView *billDeductionsAlert = [[UIAlertView alloc]
                                            initWithTitle: @"Warning!"
                                            message: @"Deductions must be less than the total bill."
                                            delegate: nil
                                            cancelButtonTitle:@"Okay"
                                            otherButtonTitles:nil];
        [billDeductionsAlert show];
        self.billDeductions.text=@"0";
    }
    else if ([self.billDeductions.text doubleValue] < 0 )
    {
        UIAlertView *billDeductionsZeroAlert = [[UIAlertView alloc]
                                            initWithTitle: @"Warning!"
                                            message: @"Deductions must be non-negative."
                                            delegate: nil
                                            cancelButtonTitle:@"Okay"
                                            otherButtonTitles:nil];
        [billDeductionsZeroAlert show];
    }
    else if ([self.tax.text doubleValue] < 0 )
    {
        UIAlertView *taxZeroAlert = [[UIAlertView alloc]
                                                initWithTitle: @"Warning!"
                                                message: @"Tax cannot be less than zero."
                                                delegate: nil
                                                cancelButtonTitle:@"Okay"
                                                otherButtonTitles:nil];
        [taxZeroAlert show];
    }

    
    finalAmountForDisplay=[self.model calculateFinalBillAmount:self.billTotal.text withDeductions:self.billDeductions.text withTax:self.tax.text];
    self.finalBillAmount.text=[NSString stringWithFormat:@"%0.2f",finalAmountForDisplay];
    
    finalAmount=[self.model calculateFinalAmountForTip:includeTax :includeDeductions :self.billTotal.text :self.billDeductions.text :self.tax.text];
    
    self.tipRate.text=[NSString stringWithFormat:@"%0.2f",tipRate];
    
    totalTip=[self.model calculateTotalTip:includeTax :includeDeductions :self.billTotal.text :self.billDeductions.text :self.tax.text :tipRate];
    self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
    
    tipPerPerson=[self.model calculateTipPerPerson:self.totalTip.text :self.noOfGuests.text];
    self.tipPerPerson.text=[NSString stringWithFormat:@"%0.2f",tipPerPerson];
    
    totalBillAndTip=[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text];
    
    self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",totalBillAndTip];
  
    tipGuest1=tipGuest2=tipGuest3=tipGuest4=tipGuest5=tipGuest6=tipGuest7=tipGuest8=tipGuest9=self.tipPerPerson.text;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    calcConfigureViewController *configViewController = segue.destinationViewController;
    calcTailorViewController *tailorViewController = segue.destinationViewController;

    if([segue.identifier isEqualToString:@"configureSegue"])
    {
        configViewController.minTip=minTip;
        configViewController.maxTip=maxTip;
        configViewController.includeTaxConfigure=[NSString stringWithFormat:@"%d",includeTax];
        configViewController.includeDeductionsConfigure=[NSString stringWithFormat:@"%d",includeDeductions];
    }
    else if([segue.identifier isEqualToString:@"tailorSegue"])
    {
        tailorViewController.noOfGuestsTailor=self.noOfGuests.text;
        tailorViewController.totalTipTailor=self.totalTip.text;
        
        tailorViewController.guestNameTailor1=guestName1;
        tailorViewController.guestNameTailor2=guestName2;
        tailorViewController.guestNameTailor3=guestName3;
        tailorViewController.guestNameTailor4=guestName4;
        tailorViewController.guestNameTailor5=guestName5;
        tailorViewController.guestNameTailor6=guestName6;
        tailorViewController.guestNameTailor7=guestName7;
        tailorViewController.guestNameTailor8=guestName8;
        tailorViewController.guestNameTailor9=guestName9;


        
        tailorViewController.tipGuestTailor1=tipGuest1;
        tailorViewController.tipGuestTailor2=tipGuest2;
        tailorViewController.tipGuestTailor3=tipGuest3;
        tailorViewController.tipGuestTailor4=tipGuest4;
        tailorViewController.tipGuestTailor5=tipGuest5;
        tailorViewController.tipGuestTailor6=tipGuest6;
        tailorViewController.tipGuestTailor7=tipGuest7;
        tailorViewController.tipGuestTailor8=tipGuest8;
        tailorViewController.tipGuestTailor9=tipGuest9;

        
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    {
        [textField resignFirstResponder];
    }
    return YES;
}

- (IBAction)returned:(UIStoryboardSegue *)segue {
    
    calcConfigureViewController *cc=[segue sourceViewController];
    minTip = cc.minimumTip.text;
    maxTip = cc.maximumTip.text;
    includeTax=cc.includeTax.on;
    includeDeductions=cc.includeDeductions.on;
    
}

- (IBAction)calculateTipRate:(id)sender {
    
    self.qualityOfService.minimumValue=[minTip integerValue];
    self.qualityOfService.maximumValue=[maxTip integerValue];
    self.tipRate.text=[NSString stringWithFormat:@"%0.0f",self.qualityOfService.value];
    tipRate=[self.tipRate.text integerValue];
    
}


- (IBAction)returnToDetails:(UIStoryboardSegue *)segue {
    
    calcTailorViewController *ccTailor=[segue sourceViewController];
    
    guestName1 = ccTailor.guestName1.text;
    guestName2 = ccTailor.guestName2.text;
    guestName3 = ccTailor.guestName3.text;
    guestName4 = ccTailor.guestName4.text;
    guestName5 = ccTailor.guestName5.text;
    guestName6 = ccTailor.guestName6.text;
    guestName7 = ccTailor.guestName7.text;
    guestName8 = ccTailor.guestName8.text;
    guestName9 = ccTailor.guestName9.text;
    
    tipGuest1=ccTailor.tipGuest1.text;
    tipGuest2=ccTailor.tipGuest2.text;
    tipGuest3=ccTailor.tipGuest3.text;
    tipGuest4=ccTailor.tipGuest4.text;
    tipGuest5=ccTailor.tipGuest5.text;
    tipGuest6=ccTailor.tipGuest6.text;
    tipGuest7=ccTailor.tipGuest7.text;
    tipGuest8=ccTailor.tipGuest8.text;
    tipGuest9=ccTailor.tipGuest9.text;
    
    self.tipPerPerson.text=@"Tailored";
    int noOfGuests=[self.noOfGuests.text integerValue];
    double totalTip;
    
    if(noOfGuests == 1)
    {
        totalTip=[tipGuest1 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }
    else if(noOfGuests == 2)
    {
        totalTip=[tipGuest1 doubleValue]+[tipGuest2 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }
    else if(noOfGuests == 3)
    {
        totalTip=[tipGuest1 doubleValue]+[tipGuest2 doubleValue]+[tipGuest3 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }
    else if(noOfGuests == 4)
    {
        totalTip=[tipGuest1 doubleValue]+[tipGuest2 doubleValue]+[tipGuest3 doubleValue]+[tipGuest4 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }
    else if(noOfGuests == 5)
    {
        totalTip=[tipGuest1 doubleValue]+[tipGuest2 doubleValue]+[tipGuest3 doubleValue]+[tipGuest4 doubleValue]+[tipGuest5 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }
    else if(noOfGuests == 6)
    {
        totalTip=[tipGuest1 doubleValue]+[tipGuest2 doubleValue]+[tipGuest3 doubleValue]+[tipGuest4 doubleValue]+[tipGuest5 doubleValue]+[tipGuest6 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }
    else if(noOfGuests == 7)
    {
        totalTip=[tipGuest1 doubleValue]+[tipGuest2 doubleValue]+[tipGuest3 doubleValue]+[tipGuest4 doubleValue]+[tipGuest5 doubleValue]+[tipGuest6 doubleValue]+[tipGuest7 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }
    else if(noOfGuests == 8)
    {
        totalTip=[tipGuest1 doubleValue]+[tipGuest2 doubleValue]+[tipGuest3 doubleValue]+[tipGuest4 doubleValue]+[tipGuest5 doubleValue]+[tipGuest6 doubleValue]+[tipGuest7 doubleValue]+[tipGuest8 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }
    else if(noOfGuests == 9)
    {
        totalTip=[tipGuest1 doubleValue]+[tipGuest2 doubleValue]+[tipGuest3 doubleValue]+[tipGuest4 doubleValue]+[tipGuest5 doubleValue]+[tipGuest6 doubleValue]+[tipGuest7 doubleValue]+[tipGuest8 doubleValue]+[tipGuest9 doubleValue];
        self.totalTip.text=[NSString stringWithFormat:@"%0.2f",totalTip];
        self.totalBillAndTip.text=[NSString stringWithFormat:@"%0.2f",[self.model calculateTotalBillAndTip:finalAmountForDisplay :self.totalTip.text]];
    }

    
}


@end
