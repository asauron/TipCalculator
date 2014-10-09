//
//  CPSettingsViewController.m
//  tipCalculator
//
//  Created by Abinaya Sarva on 10/8/14.
//  Copyright (c) 2014 Sarva. All rights reserved.
//

#import "CPSettingsViewController.h"

@interface CPSettingsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *tipDefaultLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipText;

- (void) updateTip;
- (IBAction)onTap:(id)sender;
@end

@implementation CPSettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Settings";
    }
    return self;
}
- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self updateTip];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.tipText.text = [defaults objectForKey:@"initialTip"];
}

- (void) viewDidDisappear: (BOOL)animated
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.tipText.text forKey:@"initialTip"];
    [defaults synchronize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) updateTip{
    //float defaultTipAmount = [self.tipText.text floatValue];
}


@end
