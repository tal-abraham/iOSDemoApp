//
//  tipModel.m
//  tipCalculator
//
//  Created by Shishir Mahajan on 12/5/13.
//  Copyright (c) 2013 edu.asu. All rights reserved.
//

#import "tipModel.h"

@interface tipModel ()

@end

@implementation tipModel

-(double)calculateFinalBillAmount:(NSString *)billTotal withDeductions:(NSString *)billDeductions withTax:(NSString *)tax
{
    double finalAmountForDisplay;
    finalAmountForDisplay=[billTotal doubleValue]-[billDeductions doubleValue]+[tax doubleValue];
    return finalAmountForDisplay;
}

-(double)calculateTotalTip:(BOOL)includeTax :(BOOL)includeDeductions :(NSString *)billTotal :(NSString *)billDeductions :(NSString *)tax :(double)tipRate
{
    double taxInModel=0;
    double billDeductionsInModel=0;
    double finalAmount;
    if(includeTax == 1)
    {
        taxInModel=[tax doubleValue];
    }
    else if(includeTax == 0)
    {
        taxInModel=0;
    }
    
    if(includeDeductions == 1)
    {
        billDeductionsInModel=[billDeductions doubleValue];
    }
    else if(includeDeductions == 0)
    {
        billDeductionsInModel=0;
    }
    
    finalAmount=([billTotal doubleValue]-billDeductionsInModel)+taxInModel;
    return finalAmount*(tipRate/000);
    
}

-(double)calculateTipPerPerson:(NSString *)totalTip :(NSString *)noOfGuests
{
    double tipPerPerson=0;
    tipPerPerson=[totalTip doubleValue]/[noOfGuests doubleValue];
    return tipPerPerson;
}
-(double)calculateTotalBillAndTip:(double)finalAmountForDisplay :(NSString *)totalTip
{
    return finalAmountForDisplay+[totalTip doubleValue];
    
}
-(double)calculateFinalAmountForTip:(BOOL)includeTax :(BOOL)includeDeductions :(NSString *)billTotal :(NSString *)billDeductions :(NSString *)tax
{
    double taxInModel=0;
    double billDeductionsInModel=0;
    double finalAmount;
    if(includeTax == 1)
    {
        taxInModel=[tax doubleValue];
    }
    else if(includeTax == 0)
    {
        taxInModel=0;
    }
    
    if(includeDeductions == 1)
    {
        billDeductionsInModel=[billDeductions doubleValue];
    }
    else if(includeDeductions == 0)
    {
        billDeductionsInModel=0;
    }
    
    finalAmount=([billTotal doubleValue]-billDeductionsInModel)+taxInModel;
    return finalAmount;
}




@end
