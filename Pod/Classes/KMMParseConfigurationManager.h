//
//  KMMParseConfigurationManager.h
//  Pods
//
//  Created by Kerr Marin Miller on 09/01/2015.
//
//

@import Foundation;

@class PFConfig, BFTask;

@interface KMMParseConfigurationManager : NSObject

+(instancetype)manager;
+(instancetype)managerWithConfigurationFile:(NSString*)fileName;

-(void)fetchRemoteConfig;
-(BFTask *)fetchRemoteConfigInBackground;
-(void)fetchRemoteConfigInBackgroundWithBlock:(void(^)(PFConfig *config, NSError *error))block;

-(NSString*)configurationValueForKey:(NSString*)key;

-(NSString *)parseAppId;
-(NSString *)parseClientKey;

@end
