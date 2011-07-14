//
//  OverlayFunAppDelegate.h
//  OverlayFun
//
//  Created by Daniel Norton on 7/14/11.
//  Copyright 2011 Firefly Logic. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OverlayFunViewController;

@interface OverlayFunAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet OverlayFunViewController *viewController;

@end
