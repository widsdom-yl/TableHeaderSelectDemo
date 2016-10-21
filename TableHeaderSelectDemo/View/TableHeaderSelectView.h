//
//  CircleTableHeaderView.h
//  YPEduApp
//
//  Created by guyunlong on 12/1/15.
//   tableview 的header

#import <UIKit/UIKit.h>
@protocol TableHeaderSelectViewDelegate<NSObject>
- (void)selectedIndex:(NSInteger)index;
@end
@interface TableHeaderSelectView : UIView
@property(nonatomic , retain) NSArray *data;//设置标题
@property(nonatomic, assign) id<TableHeaderSelectViewDelegate> delegate;
@property bool match;//标题对应移动线的长度 是否等于文字的长度
@end
