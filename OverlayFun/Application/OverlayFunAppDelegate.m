//
//  OverlayFunAppDelegate.m
//  OverlayFun
//
//  Created by Daniel Norton on 7/14/11.
//  Copyright 2011 Firefly Logic. All rights reserved.
//

#import "OverlayFunAppDelegate.h"


@implementation OverlayFunAppDelegate


@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark NSObject
- (void)dealloc {
	
	[window release];
	[viewController release];
    [super dealloc];
}


#pragma mark UIApplicationDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	self.window.rootViewController = viewController;
	[self.window makeKeyAndVisible];
    return YES;
}


@end
