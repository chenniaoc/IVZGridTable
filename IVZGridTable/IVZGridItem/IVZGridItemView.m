//
//  IVZGridItemView.m
//  IVZGridTable
//
//  Created by zhangyuchen on 13-12-26.
//  Copyright (c) 2013年 zhangyuchen. All rights reserved.
//

#import "IVZGridItemView.h"

static NSCache *_reusedIndentiferCache;
static CGRect kDefaultItemFrame = {0, 0, 30, 30};

@interface IVZGridItemView()

//@property(nonatomic,strong,readonly) NSCache *reusedIndentiferCache;
-(void) drawContents:(CGRect)rect;

@end


@interface IVZGridItemText : IVZGridItemView

@end

@implementation IVZGridItemText

@end

@interface IVZGridItemImage : IVZGridItemView


@end

@implementation IVZGridItemImage

- (void)setImage:(UIImage *)aImage
{
    [super setImage:aImage];
    CGImageRef imageCG = aImage.CGImage;
    CGRect imageFrame = self.frame;
    imageFrame.size.height = CGImageGetHeight(imageCG);
    imageFrame.size.width = CGImageGetWidth(imageCG);
    self.frame = imageFrame;
    
}

- (void)drawContents:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGImageRef image = self.image.CGImage;
    //CGRect imageFrame = self.frame;
    //imageFrame.size.height = CGImageGetHeight(image);
    //imageFrame.size.width = CGImageGetWidth(image);
    CGContextDrawImage(ctx, CGRectMake(0, 0, self.frame.size.width, self.frame.size.height), image);
    //[@"Hello" drawAtPoint:(CGPoint){0,0} withFont:[UIFont systemFontOfSize:12]];
}

@end



@interface IVZGridItemOther : IVZGridItemView

@end


@implementation IVZGridItemOther

@end



@implementation IVZGridItemView

- (id)init
{
    self = [super initWithFrame:kDefaultItemFrame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

/*
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:kDefaultItemFrame];
    if (self) {
        
    }
    return self;
}
*/

+ (instancetype)gridItemWithStyle:(IVZGridItemStyle)style
{
    id _self = [[IVZGridItemView alloc] init];
    switch (style) {
        case IVZGridItemStyleText:
        {
            return [[IVZGridItemText alloc] init];
            break;
        }
        case IVZGridItemStyleImage:
        {
            return [[IVZGridItemImage alloc] init];
        }
        case IVZGridItemStyleOther:
        {
            return [[IVZGridItemOther alloc] init];
        }
        default:
            break;
    }
    return _self;
}

+ (void)initialize
{
    if ([self class] == [IVZGridItemView class] ) {
        ;
    }
    _reusedIndentiferCache = [[NSCache alloc] init];
    
}

- (void)drawRect:(CGRect)rect
{
    [self drawContents:rect];
}

- (void)drawContents:(CGRect)rect
{
    [NSException raise:@"Not Implement Exception" format:@"You must implement this in subclass"];
}


@end
