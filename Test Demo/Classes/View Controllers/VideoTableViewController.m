//
//  VideoTableViewController.m
//  Test Demo
//
//  Created by Superbil on 2018/9/4.
//  Copyright © 2018年 shouchengduan. All rights reserved.
//

#import "VideoTableViewController.h"
#import <AVKit/AVKit.h>

@interface VideoTableViewController ()

@end

@implementation VideoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"video cell" forIndexPath:indexPath];
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"Pacific 2";
    } else {
        cell.textLabel.text = @"Player";
    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *videoName = [NSString stringWithFormat:@"video%02zd", indexPath.row+1];
    NSURL *videoURL = [NSBundle.mainBundle URLForResource:videoName withExtension:@"mp4"];
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    AVPlayerViewController *avvc = [[AVPlayerViewController alloc] init];
    avvc.player = player;
    [self.navigationController presentViewController:avvc animated:YES completion:nil];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//    if ([segue.identifier isEqualToString:@"player segue"]) {
//        NSURL *videoURL = [NSBundle.mainBundle URLForResource:@"video01" withExtension:@"mp4"];
//        AVPlayer *player = [AVPlayer playerWithURL:videoURL];
//        AVPlayerViewController *avvc = segue.destinationViewController;
//        avvc.player = player;
//    }
//}


@end
