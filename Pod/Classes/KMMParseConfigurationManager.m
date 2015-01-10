//
//  KMMParseConfigurationManager.m
//  Pods
//
//  Created by Kerr Marin Miller on 09/01/2015.
//
//

#import "KMMParseConfigurationManager.h"

#import <Parse/Parse.h>

@interface KMMParseConfigurationManager ()

@property(nonatomic, strong, readonly) NSDictionary *localConfig;

@end

@implementation KMMParseConfigurationManager

/**
 *  Creates a singleton for the configuration manager
 *
 *  @return a singleton that serves as the config manager
 */
+(instancetype)manager {
    static KMMParseConfigurationManager *_manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"configuration" ofType:@"plist"];
        NSDictionary *localConfig = [[NSDictionary alloc] initWithContentsOfFile:path];
        _manager = [[KMMParseConfigurationManager alloc] initWithLocalConfiguration:localConfig];
    });
    return _manager;
}

/**
 *  Creates a configuration manager object with local configuration as default
 *
 *  @param localConfiguration the local configuration held in the plist
 *
 *  @return an instance of the configuration manager
 */
-(instancetype)initWithLocalConfiguration:(NSDictionary*)localConfiguration {
    if(self = [super init]) {
        _localConfig = localConfiguration;
    }
    return self;
}

/**
 *  Fetches the remote configuration form Parse and stores it in [PFConfig currentConfig]
 */
-(void)fetchRemoteConfig {
    [PFConfig getConfigInBackground];
}


#pragma mark -- Configuration item getter

/**
 *  Returns the Parse API key
 *
 *  @return a string containing a valid parse key
 */
-(NSString *)parseAppId {
    return self.localConfig[@"PARSE_APP_ID"];
}

/**
 *  Returns the Parse Client Key
 *
 *  @return a string containing a valid Parse client key
 */
-(NSString *)parseClientKey {
    return self.localConfig[@"PARSE_CLIENT_KEY"];
}

/**
 *  Returns the value for a given key from the Parse configuration if available or
 *  from a local congfiguration if not.
 *
 *  @param key the key to the configuration value we require
 *
 *  @return an NSString containing the configuration value required
 */
-(NSString*)configurationValueForKey:(NSString*)key {
    NSString *remoteValue = [PFConfig currentConfig][key];
    if(remoteValue) {
        return remoteValue;
    }
    return self.localConfig[key];
}

@end
