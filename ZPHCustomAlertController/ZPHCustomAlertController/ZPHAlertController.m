//
//  ZPHAlertController.m
//  ZPHCustomAlertController
//
//  Created by Pishum on 15/11/10.
//  Copyright © 2015年 Pishum. All rights reserved.
//

#import "ZPHAlertController.h"

@interface ZPHAlertController ()

@end

@implementation ZPHAlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)addActionWithSlider:(SliderValueChanged)sliderChanged Button:(ButtonClicked)buttonClicked{
    if (sliderChanged) {
        sliderChanged(self.alertSlider);
    }
    if (buttonClicked) {
        buttonClicked(self.alertCancel);
    }
}


@end
