//
//  ViewController.m
//  UIWebViewKeyBoardType
//
//  Created by 二哈 on 16/8/21.
//  Copyright © 2016年 侯森魁. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKWebView *webView  =[[WKWebView alloc]initWithFrame:self.view.bounds];
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"new_file.html" ofType:nil];
    
    NSURL *url  =[NSURL fileURLWithPath:path];
    
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    
    [self.view addSubview:webView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
