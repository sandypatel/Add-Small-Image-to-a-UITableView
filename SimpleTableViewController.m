//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Rushik Shah on 12/08/13.
//  Copyright (c) 2013 Alakmalak Technologies Pvt. Ltd. All rights reserved.
//

#import "SimpleTableViewController.h"

@implementation SimpleTableViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/* //----Searching Array....//
 //NSString *f=@"Foram";    
 //NSString *h=@"hiren";    
 //NSString *s=@"Sandip";
 
 //myColor=[NSArray arrayWithObjects:f,h,s, nil];
 //NSInteger idx=[myColor indexOfObject:f];
 
 //NSArray *sortarr=[myColor sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
 
 
 
 //int i;
 //int count;
 //count=[myColor count];
 //for (i=0;i<=count;i++) {
 
 myColor=[NSArray arrayWithObjects:@"Hiren",@"Parul",@"Sandip",@"Nikunj", nil];
 
 
 //---Find the Name wise Searching......./////
 
 // myColor=[NSArray arrayWithObjects:@"Hiren",@"Parul",@"Sandip",@"Nikunj", nil];
 //for (int i =0 ; i <myColor.count; i++) {
 
 //  if ([[myColor objectAtIndex:i] isEqualToString:@"Sandip"]) {
 
 //    NSLog(@"%@",[myColor objectAtIndex:i]);
 
 //     }    
 // }
 
 //NsMutableArray Example,......//

 NSMutableArray *myColors;
 
 myColors = [NSMutableArray arrayWithObjects: @"Red", @"Green", @"Blue", @"Yellow", nil];
 
 [myColors addObject: @"Indigo"];
 [myColors addObjectsFromArray:myColor];
 
 NSLog(@"%@",[myColors description]);
 
 [myColors removeObjectAtIndex:3];
 NSLog(@"%@",[myColors description]);
 //}
 */


- (void)viewDidLoad
{
    tableData = [NSArray arrayWithObjects:@"Sandip", @"Ashok", @"Hiren", @"Nikunj", @"Bhavesh", @"Jigo", @"Ravi", @"Nehal",@"Dhruvi", @"Princi", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) {
        return [tableData count];
    }else{
        return 3;
    }
    
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{  
    if (section==0) {
        return @"Team A";
    }else{
        return @"Team B";

    }
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier=@"SimpleTableItem";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text=[tableData objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed:@"Sp.png"];
    //cell.textLabel.text=[tableData objectAtIndex:indexPath.row];
    return cell;
}		
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Fetch Fruit
    //SecondNavPage *objSecondNavPage = [[SecondNavPage alloc]initWithNibName:@"SecondNavPage" bundle:Nil];
//    objSecondNavPage.strName=[tableData objectAtIndex:indexPath.row];
    
  //  [self.navigationController pushViewController:objSecondNavPage animated:YES];
    

}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
