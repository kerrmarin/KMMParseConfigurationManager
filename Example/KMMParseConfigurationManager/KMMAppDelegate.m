//
//  KMMAppDelegate.m
//  KMMParseConfigurationManager
//
//  Created by CocoaPods on 01/09/2015.
//  Copyright (c) 2014 Kerr Marin Miller. All rights reserved.
//

#import "KMMAppDelegate.h"

#import <Parse/Parse.h>

#import <KMMParseConfigurationManager/KMMParseConfigurationManager.h>

@implementation KMMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    KMMParseConfigurationManager *configManager = [KMMParseConfigurationManager manager];
    
    [Parse setApplicationId:[configManager parseAppId]
                  clientKey:[configManager parseClientKey]];
    
    [configManager fetchRemoteConfig];
    
    return YES;
}


@end
