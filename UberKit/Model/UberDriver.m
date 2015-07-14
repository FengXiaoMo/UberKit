//
//  UberDriver.m
//  Pods
//
//  Created by Zhouboli on 15/7/10.
//
//

#import "UberDriver.h"

@implementation UberDriver

- (instancetype) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _phone_number = dictionary[@"phone_number"];
        _picture_url = dictionary[@"picture_url"];
        _name = dictionary[@"name"];
        _rating = [dictionary[@"rating"] floatValue];
    }
    return self;
}

@end
