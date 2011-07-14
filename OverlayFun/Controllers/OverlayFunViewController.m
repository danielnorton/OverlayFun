//
//  OverlayFunViewController.m
//  OverlayFun
//
//  Created by Daniel Norton on 7/14/11.
//  Copyright 2011 Firefly Logic. All rights reserved.
//

#import "OverlayFunViewController.h"


@interface OverlayFunViewController()

- (void)configureTextOverlayVisibility;

@end


@implementation OverlayFunViewController

@synthesize textView;
@synthesize overlayLabel;
@synthesize inputAccessoryView;


#pragma mark -
#pragma mark NSObject
- (void)dealloc {
	
	[textView release];
	[overlayLabel release];
	[inputAccessoryView release];
	[super dealloc];
}


#pragma mark UIViewController
- (void)viewDidUnload {
	[super viewDidUnload];
	
	[self setTextView:nil];
	[self setOverlayLabel:nil];
	[self setInputAccessoryView:nil];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self setTitle:NSLocalizedString(@"Edit Me", @"Edit Me")];
	
	[textView setInputAccessoryView:inputAccessoryView];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return YES;
}

#pragma mark UITextViewDelegate
- (void)textViewDidBeginEditing:(UITextView *)aTextView {
	
	[self configureTextOverlayVisibility];
}

- (void)textViewDidEndEditing:(UITextView *)aTextView {
	
	[self configureTextOverlayVisibility];
}

- (void)textViewDidChange:(UITextView *)textView {
	
	[self configureTextOverlayVisibility];
}


#pragma mark -
#pragma mark OverlayFunViewController
#pragma mark IBAction
- (IBAction)didTapAccessoryClearButton:(UIBarButtonItem *)sender {
	
	[textView setText:[NSString string]];
	[self configureTextOverlayVisibility];
}

- (IBAction)didTapAccessoryDoneButton:(UIBarButtonItem *)sender {
	
	[textView resignFirstResponder];
}


#pragma mark Private Extension
- (void)configureTextOverlayVisibility {

	BOOL hasText = textView.text.length > 0;
	[overlayLabel setHidden:hasText];
}


@end

