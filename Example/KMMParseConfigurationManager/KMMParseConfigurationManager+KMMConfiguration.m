//
//  KMMParseConfigurationManager+KMMConfiguration.m
//  KMMParseConfigurationManager
//
//  Created by Kerr Marin Miller on 10/01/2015.
//  Copyright (c) 2015 Kerr Marin Miller. All rights reserved.
//

#import "KMMParseConfigurationManager+KMMConfiguration.h"

@implementation KMMParseConfigurationManager (KMMConfiguration)

-(NSString *)configValueOne {
    return [self configurationValueForKey:@"configValueOne"];
}

-(NSString *)configValueTwo {
    return [self configurationValueForKey:@"configValueTwo"];
}

-(NSString *)configValueThree {
    return [self configurationValueForKey:@"configValueThree"];
}

@end
