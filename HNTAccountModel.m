//
//  HNTAccountModel.m
//  demo
//
//  Created by 东哥 on 2022/4/12.
//

#import "HNTAccountModel.h"

@implementation HNTAccountModel


-(NSDecimalNumber*)money{
    NSDecimalNumberHandler *roundUp =  [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:4 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
    NSDecimalNumber *temp = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%f",self.balance/100000000.f]];
    return [temp decimalNumberByRoundingAccordingToBehavior:roundUp];
   
}

//+ (NSDictionary *)mj_replacedKeyFromPropertyName{
//    return @{@"model":@"status"};
//}




@end
