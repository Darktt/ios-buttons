//
//  J1Button.m
//  J1Button
//
//  Created by John Campbell on 2/10/13.
//  Copyright (c) 2013 John Campbell. All rights reserved.
//

#import "J1Button.h"

@implementation J1Button


- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self commonInit];
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}
-(void)commonInit
{
    self.color = J1ButtonColorGray;
}
- (void) setColor:(J1ButtonColor)color
{
    _color = color;
    switch(color) {
        case J1ButtonColorGray:
            [self setGrayStyle];
            break;
        case J1ButtonColorGrayOnBlack:
            [self setGrayOnBlackStyle];
            break;
        case J1ButtonColorRed:
            [self setRedStyle];
            break;
        case J1ButtonColorBlue:
            [self setBlueStyle];
            break;
        case J1ButtonColorGreen:
            [self setGreenStyle];
            break;
        default:
            [self setGrayStyle];
    }
    
}
- (void)setGrayStyle
{
    UIEdgeInsets insets = UIEdgeInsetsMake(8, 8, 8, 8);
    UIImage *n = [[UIImage imageNamed:@"J1-gray-normal.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    UIImage *d = [[UIImage imageNamed:@"J1-gray-disabled.png"] resizableImageWithCapInsets:insets  resizingMode:UIImageResizingModeStretch];
    UIImage *h = [[UIImage imageNamed:@"J1-gray-highlighted.png"] resizableImageWithCapInsets:insets  resizingMode:UIImageResizingModeStretch];
    UIImage *s = [[UIImage imageNamed:@"J1-gray-selected.png"] resizableImageWithCapInsets:insets  resizingMode:UIImageResizingModeStretch];
    
    
    [self setBackgroundImage:n forState:UIControlStateNormal];
    [self setBackgroundImage:d forState:UIControlStateDisabled];
    [self setBackgroundImage:h forState:UIControlStateHighlighted];
    [self setBackgroundImage:s forState:UIControlStateSelected];
    
    self.titleLabel.shadowOffset = CGSizeMake(0, 1);
    
    [self setTitleColor:[UIColor colorWithWhite:.41 alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithWhite:.71 alpha:1] forState:UIControlStateDisabled];
    [self setTitleColor:[UIColor colorWithWhite:.31 alpha:1] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithWhite:.41 alpha:1] forState:UIControlStateSelected];
    
    [self setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateDisabled];
    
}
- (void)setGrayOnBlackStyle
{
    UIEdgeInsets insets = UIEdgeInsetsMake(8, 8, 8, 8);
    UIImage *n = [[UIImage imageNamed:@"J1-grayOnBlack-normal.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    UIImage *d = [[UIImage imageNamed:@"J1-grayOnBlack-disabled.png"] resizableImageWithCapInsets:insets  resizingMode:UIImageResizingModeStretch];
    UIImage *h = [[UIImage imageNamed:@"J1-grayOnBlack-highlighted.png"] resizableImageWithCapInsets:insets  resizingMode:UIImageResizingModeStretch];
    UIImage *s = [[UIImage imageNamed:@"J1-grayOnBlack-selected.png"] resizableImageWithCapInsets:insets  resizingMode:UIImageResizingModeStretch];
    
    
    [self setBackgroundImage:n forState:UIControlStateNormal];
    [self setBackgroundImage:d forState:UIControlStateDisabled];
    [self setBackgroundImage:h forState:UIControlStateHighlighted];
    [self setBackgroundImage:s forState:UIControlStateSelected];
    
    self.titleLabel.shadowOffset = CGSizeMake(0, 1);
    
    [self setTitleColor:[UIColor colorWithWhite:.41 alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithWhite:.71 alpha:1] forState:UIControlStateDisabled];
    [self setTitleColor:[UIColor colorWithWhite:.31 alpha:1] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithWhite:.41 alpha:1] forState:UIControlStateSelected];
    
    [self setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateDisabled];
    
}

- (void)setRedStyle
{
    UIEdgeInsets insets = UIEdgeInsetsMake(8, 8, 8, 8);
    UIImage *n = [[UIImage imageNamed:@"J1-red-normal.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    UIImage *h = [[UIImage imageNamed:@"J1-red-highlighted.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    UIImage *s = [[UIImage imageNamed:@"J1-red-selected.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    
    [self setBackgroundImage:n forState:UIControlStateNormal];
    [self setBackgroundImage:h forState:UIControlStateHighlighted];
    [self setBackgroundImage:s forState:UIControlStateSelected];
        
    self.titleLabel.shadowOffset = CGSizeMake(0, -1);
    
    [self setTitleColor:[UIColor colorWithWhite:1 alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithWhite:.8 alpha:1] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithWhite:.7 alpha:1] forState:UIControlStateSelected];
    
    [self setTitleShadowColor:[UIColor colorWithRed:.5 green:0 blue:0 alpha:1] forState:UIControlStateNormal];

}
- (void)setBlueStyle
{
    UIEdgeInsets insets = UIEdgeInsetsMake(8, 8, 8, 8);
    UIImage *n = [[UIImage imageNamed:@"J1-blue-normal.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    UIImage *h = [[UIImage imageNamed:@"J1-blue-highlighted.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    UIImage *s = [[UIImage imageNamed:@"J1-blue-selected.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    
    [self setBackgroundImage:n forState:UIControlStateNormal];
    [self setBackgroundImage:h forState:UIControlStateHighlighted];
    [self setBackgroundImage:s forState:UIControlStateSelected];
    
    self.titleLabel.shadowOffset = CGSizeMake(0, -1);
    
    [self setTitleColor:[UIColor colorWithWhite:1 alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithWhite:.8 alpha:1] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithWhite:.7 alpha:1] forState:UIControlStateSelected];
    
    [self setTitleShadowColor:[UIColor colorWithRed:0 green:0 blue:.5 alpha:1] forState:UIControlStateNormal];
    
}
- (void)setGreenStyle
{
    UIEdgeInsets insets = UIEdgeInsetsMake(8, 8, 8, 8);
    UIImage *n = [[UIImage imageNamed:@"J1-green-normal.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    UIImage *h = [[UIImage imageNamed:@"J1-green-highlighted.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    UIImage *s = [[UIImage imageNamed:@"J1-green-selected.png"] resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    
    [self setBackgroundImage:n forState:UIControlStateNormal];
    [self setBackgroundImage:h forState:UIControlStateHighlighted];
    [self setBackgroundImage:s forState:UIControlStateSelected];
    
    self.titleLabel.shadowOffset = CGSizeMake(0, -1);
    
    [self setTitleColor:[UIColor colorWithWhite:1 alpha:1] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithWhite:.8 alpha:1] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor colorWithWhite:.7 alpha:1] forState:UIControlStateSelected];
    
    [self setTitleShadowColor:[UIColor colorWithRed:0 green:0 blue:.5 alpha:1] forState:UIControlStateNormal];
    
}
@end
