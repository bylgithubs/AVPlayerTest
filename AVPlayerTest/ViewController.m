//
//  ViewController.m
//  AVPlayerTest
//
//  Created by Civet on 2019/4/24.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

//@property (nonatomic) BOOL allow

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)playMovie:(id)sender{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"movie" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:path];
    AVPlayerViewController *play = [[AVPlayerViewController alloc]init];
    play.player = [[AVPlayer alloc]initWithURL:url];
    [self presentViewController:play animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
