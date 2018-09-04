//
//  ImageViewController.m
//  Test Demo
//
//  Created by Superbil on 2018/9/4.
//  Copyright © 2018年 shouchengduan. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, getter=isGyroEnabled) BOOL gyroEnabled;
@property (nonatomic) NSInteger index;

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.gyroEnabled = NO;

    self.imageView.image = [UIImage imageNamed:@"c01.jpg"];
    _index = 0;
}

- (IBAction)actionSheetPopup:(UIButton *)sender {
    UIAlertController *a = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *gyroAction;
    if (self.isGyroEnabled) {
        gyroAction = [UIAlertAction actionWithTitle:@"Disable gyro" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            self.gyroEnabled = NO;
        }];
    } else {
        gyroAction = [UIAlertAction actionWithTitle:@"Enable gyro" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            self.gyroEnabled = YES;
        }];
    }

    [a addAction:cancelAction];
    [a addAction:gyroAction];

    [self presentViewController:a animated:YES completion:nil];
}

- (IBAction)swipNextImage:(UISwipeGestureRecognizer *)sender {
    self.index++;
}

- (IBAction)swipePrevImage:(UISwipeGestureRecognizer *)sender {
    self.index--;
}

- (void)setIndex:(NSInteger)index {
    if (index > 3) {
        index = 0;
    } else if (index < 0) {
        index = 3;
    }

    NSString *imageName = [NSString stringWithFormat:@"c%02zd.jpg", index+1];
    self.imageView.image = [UIImage imageNamed:imageName];

    _index = index;
}

@end
