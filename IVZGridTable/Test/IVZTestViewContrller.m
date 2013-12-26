//
//  IVZTestViewContrller.m
//  IVZGridTable
//
//  Created by zhangyuchen on 13-12-26.
//  Copyright (c) 2013年 zhangyuchen. All rights reserved.
//

#import "IVZTestViewContrller.h"
#import "IVZGridItemView.h"

@implementation IVZTestViewContrller

- (void)viewDidLoad
{
    for (int i = 0; i < 7; i++) {
        IVZGridItemView *item1 = [IVZGridItemView gridItemWithStyle:IVZGridItemStyleImage];
        item1.image = [UIImage imageNamed:[NSString stringWithFormat:@"sample%d.jpg" , (i + 1)]];
        CGFloat width = item1.frame.size.width;
        CGFloat height = item1.frame.size.height;
        CGRect itemFrame = CGRectMake(i * (width + 10), 30, width, height);
        item1.frame = itemFrame;
        [self.view addSubview:item1];
    }

}

@end
