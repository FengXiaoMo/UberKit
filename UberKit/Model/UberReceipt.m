//
//  UberReceipt.m
//  Bobo
//
//  Created by Zhouboli on 15/7/12.
//  Copyright (c) 2015年 Zhouboli. All rights reserved.
//

#import "UberReceipt.h"

@implementation UberReceipt

- (instancetype) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _request_id = [dictionary objectForKey:@"request_id"];
        if (![[dictionary objectForKey:@"normal_fare"] isEqual:[NSNull null]]) {
            _normal_fare = [[dictionary objectForKey:@"normal_fare"] floatValue];
        }
        if (![[dictionary objectForKey:@"subtotal"] isEqual:[NSNull null]]) {
            _subtotal = [[dictionary objectForKey:@"subtotal"] floatValue];
        }
        if (![[dictionary objectForKey:@"total_charged"] isEqual:[NSNull null]]) {
            _total_charged = [[dictionary objectForKey:@"total_charged"] floatValue];
        }
        if (![[dictionary objectForKey:@"total_owed"] isEqual:[NSNull null]]) {
            _total_owed = [[dictionary objectForKey:@"total_owed"] floatValue];
        }
        _currency_code = [dictionary objectForKey:@"currency_code"];
        _duration = [dictionary objectForKey:@"duration"];
        _distance = [dictionary objectForKey:@"distance"];
        _distance_label = [dictionary objectForKey:@"distance_label"];
        if (![dictionary[@"charges"] isEqual:[NSNull null]]) {
            for (UberCharge *charge in [dictionary objectForKey:@"charges"]) {
                [_charges addObject:charge];
            }
        }
        if (![dictionary[@"charge_adjustments"] isEqual:[NSNull null]]) {
            for (UberCharge *charge in [dictionary objectForKey:@"charge_adjustments"]) {
                [_charge_adjustments addObject:charge];
            }
        }
    }
    return self;
}

@end
