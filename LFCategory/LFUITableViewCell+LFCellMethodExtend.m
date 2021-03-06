//
//  UITableViewCell+LFCellMethodExtend.m
//  LaiFeng
//
//  Created by Ton on 15/9/11.
//  Copyright (c) 2015年 live Interactive. All rights reserved.
//

#import "LFUITableViewCell+LFCellMethodExtend.h"
#import "LFCategory.h"

@implementation UITableViewCell (LFCellMethodExtendAdditions)

+ (id)loadFromXib {
    
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:self options:nil]lastObject];
}

+ (NSString*)cellIdentifier {

    return NSStringFromClass(self);
}

+ (id)loadFromCellStyle:(UITableViewCellStyle)cellStyle {
    
    return [[self alloc] initWithStyle:cellStyle reuseIdentifier:NSStringFromClass(self)];
}


- (void)createSeparatorOfView:(UIView *)view Direction:(UIViewSeparatorDirection)direction edgeNum:(float)edgeNum {
    if (view == nil) {
        return;
    }
    UIView *separatorView = UIView.new;
    separatorView.backgroundColor = [UIColor lightGrayColor];
    
    if (edgeNum) {
        [separatorView setFrame:CGRectMake(edgeNum, 0, self.width-edgeNum, .5f)];
    }
    else {
        [separatorView setFrame:CGRectMake(0, 0, self.width, .5f)];
    }
    CGRect frame = separatorView.frame;
    if (direction == UIViewSeparatorDirectionTop) {
        frame.origin.y = 0;
    }
    else {
        frame.origin.y = frame.size.height - .5f;
    }
    separatorView.frame = frame;
    [view addSubview:separatorView];
}
@end
