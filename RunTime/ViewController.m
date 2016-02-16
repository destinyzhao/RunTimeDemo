//
//  ViewController.m
//  RunTime
//
//  Created by Alex on 16/2/16.
//  Copyright © 2016年 Alex. All rights reserved.
//

#import "ViewController.h"
#import "UIView+StringTag.h"
#import "NSObject+AssociatedObject.h"

@interface ViewController ()

@end

@implementation ViewController

void reportFunction(id self, SEL _cmd){
    NSLog(@"This object is %p",self);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 给UIView增加属于方式一
    /*
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, 80)];
    view.associatedObject = @"我的StringTag";
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
     
     NSLog(@"ViewTag = %ld,ViewStringTag = %@",view.tag,view.associatedObject);
     */
    
    // 给UIView增加属于方式二
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, 80)];
    view.stringTag = @"我的StringTag";
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    
    NSLog(@"ViewTag = %ld,ViewStringTag = %@",view.tag,view.stringTag);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
