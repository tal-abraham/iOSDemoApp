//
//  calcConfigureViewController.m
//  tipCalculator
//
//  Created by Shishir Mahajan on 9/28/13.
//  Copyright (c) 2013 edu.asu. All rights reserved.
//

#import "calcConfigureViewController.h"
#import "calcViewController.h"

@interface calcConfigureViewController ()

@end

@implementation calcConfigureViewController 

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
	// Do any additional setup after loading the view.
    self.minimumTip.delegate=self;
    self.maximumTip.delegate=self;
    
    self.minimumTip.text=self.minTip;
    self.maximumTip.text=self.maxTip;
    if([self.includeTaxConfigure isEqual:@"1"])
    {
        [self.includeTax setOn:YES animated:YES];
    }
    else if([self.includeTaxConfigure isEqual:@"0"])
    {
        [self.includeTax setOn:NO animated:YES];
    }
    
    if([self.includeDeductionsConfigure isEqual:@"1"])
    {
        [self.includeDeductions setOn:YES animated:YES];
    }
    else if([self.includeDeductionsConfigure isEqual:@"0"])
    {
        [self.includeDeductions setOn:NO animated:YES];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    {
        if(self.minimumTip==textField)
        {
        [self.minimumTip resignFirstResponder];
        if ([self.minimumTip.text doubleValue] < 0.0)
            {
                UIAlertView *minTipAlert = [[UIAlertView alloc]
                                                           initWithTitle: @"Warning!"
                                                           message: @"Minimum tip cannot be less than zero."
                                                           delegate: nil
                                                           cancelButtonTitle:@"Okay"
                                                           otherButtonTitles:nil];
                [minTipAlert show];
                self.minimumTip.text=@"0.0";
            }
        }
        if(self.maximumTip==textField)
        {
            [self.maximumTip resignFirstResponder];
            if ([self.maximumTip.text doubleValue] < 0.0)
            {
                UIAlertView *maxTipNegativeAlert = [[UIAlertView alloc]
                                            initWithTitle: @"Warning!"
                                            message: @"Maximum tip cannot be less than zero."
                                            delegate: nil
                                            cancelButtonTitle:@"Okay"
                                            otherButtonTitles:nil];
                [maxTipNegativeAlert show];
                self.maximumTip.text=@"40.0";
            }

            if ([self.maximumTip.text doubleValue] > 100)
            {
                UIAlertView *maxTipAlert = [[UIAlertView alloc]
                                            initWithTitle: @"Warning!"
                                            message: @"Maximum tip cannot be more than hundred."
                                            delegate: nil
                                            cancelButtonTitle:@"Okay"
                                            otherButtonTitles:nil];
                [maxTipAlert show];
                self.maximumTip.text=@"40.0";
            }
        }
        if([self.minimumTip.text doubleValue] > [self.maximumTip.text doubleValue])
        {
            UIAlertView *minMaxAlert = [[UIAlertView alloc]
                                        initWithTitle: @"Warning!"
                                        message: @"Minimum tip cannot be more than maximum tip"
                                        delegate: nil
                                        cancelButtonTitle:@"Okay"
                                        otherButtonTitles:nil];
            [minMaxAlert show];
            self.minimumTip.text=@"0.0";
            self.maximumTip.text=@"40.0";
        }
    }
    return YES;
}

@end
