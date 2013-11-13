//
//  SimpleTableViewController.h
//  SimpleTable
//
//  Created by Rushik Shah on 12/08/13.
//  Copyright (c) 2013 Alakmalak Technologies Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *tableData;
}
//@property(strong,nonatomic)
@end
