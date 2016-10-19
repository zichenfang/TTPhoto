//
//  ViewController.m
//  TTPhotoTest
//
//  Created by flappybird on 16/10/19.
//  Copyright © 2016年 zichenfang. All rights reserved.
//

#import "ViewController.h"
#import "FFPhotoViewController.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tap:(id)sender {
    FFPhotoViewController *vc = [[FFPhotoViewController alloc] init];
    vc.block = ^(UIImage *image){
        self.imgView.image = image;
    };
    [self presentViewController:vc animated:YES completion:nil];
}

@end
