//
//  ViewController.m
//  TableHeaderSelectDemo
//
//  Created by guyunlong on 10/21/16.
//  Copyright © 2016 gyl. All rights reserved.
//

#import "ViewController.h"
#import "TableHeaderSelectView.h"
@interface ViewController ()<TableHeaderSelectViewDelegate>
@property (strong, nonatomic) UIView* navHeaderView;
@property (strong, nonatomic) TableHeaderSelectView* headerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [self initView];
}

-(void)initView{
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    _navHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    [_navHeaderView setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:_navHeaderView];
    
    _headerView = [[TableHeaderSelectView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 40)];
    NSArray *tabBarItemTitles = @[@"进行中", @"即将开始",@"已结束"];
    [_headerView setMatch:false];
    [_headerView setDelegate:self];
    [_headerView setData:tabBarItemTitles];
    [self.view addSubview:_headerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - TableHeaderSelectViewDelegate
- (void)selectedIndex:(NSInteger)index{
    NSLog(@"select index is %ld",index);
}

@end
