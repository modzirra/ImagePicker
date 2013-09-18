//
//  WDViewController.m
//  WDImagePicker
//
//  Created by Aimee on 9/18/13.
//  Copyright (c) 2013 Web Diggity. All rights reserved.
//

#import "WDViewController.h"

@interface WDViewController ()

@end

@implementation WDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startImagePicker:(id)sender{
    UIImagePickerController *picker = [UIImagePickerController new];
    [self presentViewController:picker animated:YES completion:nil];
    // create image picker and implement
}
@end
