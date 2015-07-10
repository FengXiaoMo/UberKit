//
//  UberRequest.m
//  Pods
//
//  Created by Zhouboli on 15/7/10.
//
//

#import "UberRequest.h"

@implementation UberRequest

- (instancetype) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _request_id = dictionary[@"request_id"];
        _status = dictionary[@"status"];
        _driver = [[UberDriver alloc] initWithDictionary:dictionary[@"driver"]];
        _vehicle = [[UberVehicle alloc] initWithDictionary:dictionary[@"vehicle"]];
        _location = [[UberLocation alloc] initWithDictionary:dictionary[@"location"]];
        _eta = [dictionary[@"eta"] integerValue];
        _surge_multiplier = [dictionary[@"surge_multiplier"] floatValue];
    }
    return self;
}

@end
