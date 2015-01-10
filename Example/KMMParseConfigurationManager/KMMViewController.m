//
//  KMMViewController.m
//  KMMParseConfigurationManager
//
//  Created by Kerr Marin Miller on 01/09/2015.
//  Copyright (c) 2014 Kerr Marin Miller. All rights reserved.
//

#import "KMMViewController.h"

#import "KMMParseConfigurationManager+KMMConfiguration.h"

@interface KMMViewController ()

@property(nonatomic, weak) IBOutlet UILabel *firstLabel;
@property(nonatomic, weak) IBOutlet UILabel *secondLabel;
@property(nonatomic, weak) IBOutlet UILabel *thirdLabel;

@end

@implementation KMMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.firstLabel.text = [[KMMParseConfigurationManager manager] configValueOne];
    self.secondLabel.text = [[KMMParseConfigurationManager manager] configValueTwo];
    self.thirdLabel.text = [[KMMParseConfigurationManager manager] configValueThree];
}


@end
