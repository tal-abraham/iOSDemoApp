//
//  tipModel.h
//  tipCalculator
//
//  Created by Shishir Mahajan on 12/5/13.
//  Copyright (c) 2013 edu.asu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tipModel : NSObject

-(double)calculateFinalBillAmount:(NSString *)billTotal withDeductions:(NSString *)billDeductions withTax:(NSString *)tax;
-(double)calculateTotalTip:(BOOL)includeTax :(BOOL)includeDeductions :(NSString *)billTotal :(NSString *)billDeductions :(NSString *)tax :(double)tipRate;
-(double)calculateTipPerPerson:(NSString *)totalTip :(NSString *)noOfGuests;
-(double)calculateTotalBillAndTip:(double)finalAmountForDisplay :(NSString *)totalTip;
-(double)calculateFinalAmountForTip:(BOOL)includeTax :(BOOL)includeDeductions :(NSString *)billTotal :(NSString *)billDeductions :(NSString *)tax;

@end
