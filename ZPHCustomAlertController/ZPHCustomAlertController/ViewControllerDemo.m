//
//  ViewController.m
//  ZPHCustomAlertController
//
//  Created by Pishum on 15/11/10.
//  Copyright © 2015年 Pishum. All rights reserved.
//

#import "ViewControllerDemo.h"
#import "ZPHAlertController.h"


@interface ViewControllerDemo ()

@end

@implementation ViewControllerDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    

}
- (IBAction)showAlertClicked:(UIButton *)sender {
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"bundle: nil];
    
    ZPHAlertController *alertController = [mainStoryboard instantiateViewControllerWithIdentifier:@"ZPHAlertController"];
    
    self.definesPresentationContext = YES; //self is presenting view controller
    alertController.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
    alertController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    
    [alertController addActionWithSlider:^(UISlider *slider) {
        [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        [slider setTag:0];
    } Button:^(UIButton *button) {
        [button addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
        [button setTag:0];
        [button setTitle:@"Dismiss" forState:UIControlStateNormal];
    }];
    [self presentViewController:alertController animated:YES completion:nil];
}

-(void)sliderValueChanged:(UISlider*)sender{
    switch (sender.tag) {
        case 0:
            NSLog(@"The values=%f",sender.value);
            break;
            
        default:
            break;
    }
}
-(void)btnClicked:(UIButton*)sender{
    switch (sender.tag) {
        case 0:
            [self dismissViewControllerAnimated:YES completion:nil];
            break;
            
        default:
            break;
    }
}
@end
