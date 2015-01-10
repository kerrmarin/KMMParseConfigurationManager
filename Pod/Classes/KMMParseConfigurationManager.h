//
//  KMMParseConfigurationManager.h
//  Pods
//
//  Created by Kerr Marin Miller on 09/01/2015.
//
//

#import <Foundation/Foundation.h>

@interface KMMParseConfigurationManager : NSObject

+(instancetype)manager;
+(instancetype)managerWithConfigurationFile:(NSString*)fileName;

-(void)fetchRemoteConfig;
-(NSString*)configurationValueForKey:(NSString*)key;

-(NSString *)parseAppId;
-(NSString *)parseClientKey;

@end
