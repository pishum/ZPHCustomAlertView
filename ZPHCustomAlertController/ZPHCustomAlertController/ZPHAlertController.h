//
//  ZPHAlertController.h
//  ZPHCustomAlertController
//
//  Created by Pishum on 15/11/10.
//  Copyright © 2015年 Pishum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZPHAlertController : UIViewController
@property (strong, nonatomic) IBOutlet UISlider *alertSlider;
@property (strong, nonatomic) IBOutlet UIButton *alertCancel;

typedef void (^SliderValueChanged) (UISlider* slider);
typedef void (^ButtonClicked) (UIButton* button);

-(void)addActionWithSlider:(SliderValueChanged)sliderChanged Button:(ButtonClicked)buttonClicked;
@end
