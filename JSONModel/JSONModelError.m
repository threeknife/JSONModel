//
//  JSONModelErrors.m
//  JSONModelDemo
//
//  Created by Marin Todorov on 12/12/2012.
//  Copyright (c) 2012 Underplot ltd. All rights reserved.
//

#import "JSONModelError.h"

NSString * const JSONModelErrorDomain = @"JSONModelErrorDomain";

@implementation JSONModelError

-(id)initWithType:(int)t
{
    self = [super init];
    if (self) {
        //set the json model error type
        self.type = t;
        
    }
    return self;
}

+(id)errorInvalidData
{
    return [JSONModelError errorWithDomain:JSONModelErrorDomain
                                                   code:kJSONModelErrorInvalidData
                                                userInfo:@{NSLocalizedDescriptionKey:@"Invalid JSON data"}];
}

+(id)errorBadResponse
{
    return [JSONModelError errorWithDomain:JSONModelErrorDomain
                                      code:kJSONModelErrorBadResponse
                                  userInfo:@{NSLocalizedDescriptionKey:@"Bad network response "}];
}

@end
