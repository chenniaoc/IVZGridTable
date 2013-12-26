//
//  IVZGridItemViewController.h
//  IVZGridTable
//
//  Created by zhangyuchen on 13-12-26.
//  Copyright (c) 2013年 zhangyuchen. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, IVZGridItemStyle)
{
    IVZGridItemStyleText = 1,
    IVZGridItemStyleImage = 1 << 1,
    IVZGridItemStyleOther = 1 << 2,
    IVZGridItemStyleReserved = 1 << 3,
};

@interface IVZGridItemViewController : UIViewController


@end
