//
//  ViewController.m
//  PDFBug
//
//  Created by Daniel Morgan on 9/18/15.
//  Copyright © 2015 danmorgan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString* urlAsAString = @"https://developer.apple.com/library/ios/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/iPhoneAppProgrammingGuide.pdf";
    NSURL* url = [NSURL URLWithString:urlAsAString];
    CGPDFDocumentRef PDFfile = CGPDFDocumentCreateWithURL((CFURLRef)url);
    
    if (!PDFfile) {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"BOOM! PDF is NULL" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alert show];
    } else {
        NSLog(@"Sucess!");
    }
    
    CGPDFDocumentRelease(PDFfile);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
