//
//  newBannerView.h
//  NativeView
//
//  Created by Cain on 16/9/13.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "SDCycleScrollView.h"

#import "RCTComponent.h"
#import "UIView+React.h"

@interface NewBannerView : SDCycleScrollView

@property (nonatomic, copy) RCTBubblingEventBlock onClickBanner;

@end
