//
//  OverlayFunViewController.h
//  OverlayFun
//
//  Created by Daniel Norton on 7/14/11.
//  Copyright 2011 Firefly Logic. All rights reserved.
//


@interface OverlayFunViewController : UIViewController <UITextViewDelegate>

@property (nonatomic, retain) IBOutlet UITextView *textView;
@property (nonatomic, retain) IBOutlet UILabel *overlayLabel;
@property (nonatomic, retain) IBOutlet UIView *inputAccessoryView;

@end

