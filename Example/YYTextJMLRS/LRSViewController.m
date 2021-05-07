//
//  LRSViewController.m
//  YYTextJMLRS
//
//  Created by 刘sama on 05/07/2021.
//  Copyright (c) 2021 刘sama. All rights reserved.
//

#import "LRSViewController.h"
#import <YYText.h>

@interface LRSViewController ()
@property (nonatomic, assign) YYTextView *textView;

@end

@implementation LRSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    if ([self respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    
    NSString *text = @"You can shake the device to undo and redo.";
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        YYTextView *textView = [[YYTextView alloc] initWithFrame:(CGRectMake(10, 100, 300, 100))];
        textView.text = text;
        textView.font = [UIFont systemFontOfSize:17];
        textView.textContainerInset = UIEdgeInsetsMake(10, 10, 10, 10);
        textView.allowsUndoAndRedo = YES; /// Undo and Redo
        textView.maximumUndoLevel = 10; /// Undo level
        textView.allowsCopyAttributedString = false;
        textView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
        textView.scrollIndicatorInsets = textView.contentInset;
        [self.view addSubview:textView];
        self.textView = textView;
        
        textView.selectedRange = NSMakeRange(text.length, 0);
        [textView becomeFirstResponder];
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
