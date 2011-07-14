//
//  HomeViewController.m
//  overlay
//
//  Created by Daniel Norton on 7/14/11.
//  Copyright 2011 Firefly Logic. All rights reserved.
//

#import "HomeViewController.h"
#import "OverlayFunViewController.h"


@implementation HomeViewController

@synthesize popupNav;
@synthesize displayTextView;


#pragma mark -
#pragma mark NSObject
- (void)dealloc {
	
	[popupNav release];
	[displayTextView release];
	[super dealloc];
}


#pragma mark UIViewController
- (void)viewDidUnload {
	
	[self setPopupNav:nil];
	[self setDisplayTextView:nil];
	[super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return YES;
}


#pragma mark -
#pragma mark HomeViewController
#pragma mark IBAction
- (IBAction)didTapGoButton:(UIButton *)sender {
	
	OverlayFunViewController *overlay = (OverlayFunViewController *)[popupNav.viewControllers objectAtIndex:0];
	[overlay.textView setText:displayTextView.text];
	
	[self presentModalViewController:popupNav animated:YES];
}

- (IBAction)didTapNavigationCancelButton:(UIBarButtonItem *)sender {
	
	[self dismissModalViewControllerAnimated:YES];
}

- (IBAction)didTapNavigationDoneButton:(UIBarButtonItem *)sender {

	OverlayFunViewController *overlay = (OverlayFunViewController *)[popupNav.viewControllers objectAtIndex:0];
	[displayTextView setText:overlay.textView.text];
	
	[self dismissModalViewControllerAnimated:YES];
}


@end

