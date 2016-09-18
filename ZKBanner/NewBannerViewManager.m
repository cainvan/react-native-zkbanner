//
//  newBannerViewManager.m
//  NativeView
//
//  Created by Cain on 16/9/13.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "NewBannerViewManager.h"
#import "NewBannerView.h"

#import "RCTBridge.h"           //进行通信的头文件
#import "RCTEventDispatcher.h"  //事件派发，不导入会引起Xcode警告

@interface NewBanner() <SDCycleScrollViewDelegate>

@end

@implementation NewBanner

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(autoScrollTimeInterval, CGFloat);

RCT_EXPORT_VIEW_PROPERTY(imageURLStringsGroup, NSArray);

RCT_EXPORT_VIEW_PROPERTY(autoScroll, BOOL);

RCT_EXPORT_VIEW_PROPERTY(pageControlAliment, NSInteger);

RCT_EXPORT_VIEW_PROPERTY(onClickBanner, RCTBubblingEventBlock);

RCT_EXPORT_VIEW_PROPERTY(localizationImageNamesGroup, NSArray);

- (UIView *)view
{
  NewBannerView *bannerScrollView = [NewBannerView cycleScrollViewWithFrame:CGRectZero delegate:self placeholderImage:nil];
  bannerScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleClassic;
  bannerScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
  return bannerScrollView;
}

#pragma mark SDCycleScrollViewDelegate

//- (NSArray *) customDirectEventTypes {
//    return @[@"onClickBanner"];
//}

/**
 *  banner点击
 */
- (void)cycleScrollView:(NewBannerView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
  
  if (!cycleScrollView.onClickBanner) {
    return;
  }
  
  NSLog(@"oc did click %li", [cycleScrollView.reactTag integerValue]);
  
  cycleScrollView.onClickBanner(@{@"target": cycleScrollView.reactTag,
                                  @"value": [NSNumber numberWithInteger:index+1]});
  
}

//- (NSDictionary *)constantsToExport{
//  return @{
//           @"SDCycleScrollViewPageContolAliment": @{
//               @"right": @(SDCycleScrollViewPageContolAlimentRight),
//               @"center": @(SDCycleScrollViewPageContolAlimentCenter)
//               }
//           };
//}
//
//RCT_EXPORT_METHOD(testResetTime:(RCTResponseSenderBlock)callback) {
//  
//  callback(@[@(234)]);
//}

@end
