//
//  WDViewController.m
//  WDImagePicker
//
//  Created by Aimee on 9/18/13.
//  Copyright (c) 2013 Web Diggity. All rights reserved.
//

#import "WDViewController.h"
//#import "CFCameraViewController.h"

@interface WDViewController ()<UIImagePickerControllerDelegate>{
    __weak IBOutlet UIImageView *imageView;
}

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
    picker.delegate = self;
    picker.allowsEditing = YES;
    if ([UIImagePickerController isSourceTypeAvailable:(UIImagePickerControllerSourceTypeCamera)]) {
        [picker setSourceType:(UIImagePickerControllerSourceTypeCamera)];
    }
    //check for a camera on the device and set it if available
     [self presentViewController:picker animated:YES completion:nil];
    // create image picker and implement
}

- (void)imagePickerController:
(UIImagePickerController *) picker didFinishPickingMediaWithInfo:
(NSDictionary *)info{
    UIImage * newImage = info[UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated: YES completion:^{
        imageView.image = new image;
    }];
}
//select image


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if( [segue.destinationViewController isKindOfClass:[CFCameraViewController class]] ) {
        ((CFCameraViewController*)segue.destinationViewController).delegate = self;
    }
}


#pragma mark - Camera delegate

-(void) cameraViewController:(CFCameraViewController*)cameraVC
             didCaptureImage:(UIImage*)image
{
    imageView.image = image;
    [self.navigationController popToViewController:self animated:YES];
}


@end
