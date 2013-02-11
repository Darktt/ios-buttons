//
//  J1SexyButton.h
//  J1SexyButton
//
//  Created by John Campbell on 2/10/13.
//  Copyright (c) 2013 John Campbell. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    J1ButtonColorGray = 1,
    J1ButtonColorGrayOnBlack,
    J1ButtonColorRed,
    J1ButtonColorBlue,
    J1ButtonColorGreen
} J1ButtonColor;


@interface J1Button : UIButton

@property (nonatomic) J1ButtonColor color;

@end
