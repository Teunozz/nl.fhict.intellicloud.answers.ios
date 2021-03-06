//
//  WebserviceManager.m
//  Answers
//
//  Created by Lex Nicolaes on 21-11-13.
//  Copyright (c) 2013 IntelliCloud. All rights reserved.
//

#import "WebserviceManager.h"

/**
 * Class for managing communication with the WebService
 */
@implementation WebserviceManager

/**
 * @brief Get singleton instance of WebserviceManager
 */
+ (instancetype)sharedClient
{
    static WebserviceManager *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[WebserviceManager alloc] initWithBaseURL:[NSURL URLWithString:WebserviceManagerBaseURLString]];
    });
    
    return _sharedClient;
}

@end
