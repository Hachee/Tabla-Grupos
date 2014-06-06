//
//  TableViewController.m
//  TableViewAplication
//
//  Created by Héctor Omar Silva Díaz on 5/23/14.
//  Copyright (c) 2014 Hache Silva. All rights reserved.
//

#import "TableViewController.h"
#import "TableCell.h"
#import "DetailViewController.h"
#import "data.h"
@interface TableViewController ()
{
    int currentRow;
}
@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //color a las lineas separadoras
    //self.tableView.separatorColor = [UIColor colorWithRed:0/255.0 green:181/255.0 blue:13/255.0 alpha:0.5];
    
    UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleBordered target:nil action:nil];
    [[self navigationItem] setBackBarButtonItem:newBackButton];
    
    _tituloFecha1a = [[NSMutableArray alloc] initWithObjects:@"Brasil",@"México", nil];//@[@"Brasil"];
    _tituloFecha1b=[[NSMutableArray alloc] initWithObjects:@"Croacia",@"Chile", nil];
  //  NSMutableArray*data=[[NSMutableArray alloc] initWithObjects:_tituloFecha1a,_tituloFecha1b, nil];
   
//    _tituloFecha1b =@[@"Croacia"];
//    _tituloFecha2a =@[@"México"];
//    _tituloFecha2b =@[@"Camerún"];
//    _tituloFecha3a = @[@"España"];
//    _tituloFecha3b =@[@"Chile"];
//    _tituloFecha4a =@[@"Holanda"];
//    _tituloFecha4b =@[@"Australia"];
    
    
    _imagenesFecha1a =[[NSMutableArray alloc] initWithObjects:@"1.jpg",@"2.jpg", nil];
    _imagenesFecha1b =[[NSMutableArray alloc] initWithObjects:@"3.jpg",@"4.jpg", nil];
//    _imagenesFecha2a = @[@"3.jpg"];
//    _imagenesFecha2b = @[@"6.jpg"];
//    _imagenesFecha3a = @[@"9.jpg"];
//    _imagenesFecha3b = @[@"10.jpg"];
//    _imagenesFecha4a = @[@"11.jpg"];
//    _imagenesFecha4b = @[@"14.jpg"];
    
   /* UIView  *background = [[UIView alloc] initWithFrame:self.tableView.bounds];
    background.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];*/

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return [_tituloFecha1a count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.

    return 1;

}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {


    
    return [NSString stringWithFormat:@"seccion %i",section+1];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"TableCell";
    TableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    int row = [indexPath section];

        cell.tituloLabel.text = _tituloFecha1a [row];
        cell.thumbImagen.image = [UIImage imageNamed:_imagenesFecha1a [row]];
        
        
        cell.tituloLabel2.text = _tituloFecha1b [row];
        cell.thumbImagen2.image = [UIImage imageNamed:_imagenesFecha1b [row]];


    
    return cell;

}


 -(BOOL)prefersStatusBarHidden {
 
 return YES;
 
 }
 
 -(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
 
 [cell setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@""]]];
 }
 
 -(void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
 
 view.tintColor = [UIColor blackColor];
 
 // if you have index/header text in your tableview change your index text color
 UITableViewHeaderFooterView *headerIndexText = (UITableViewHeaderFooterView *)view;
 [headerIndexText.textLabel setTextColor:[UIColor whiteColor]];
 
 }
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     currentRow=indexPath.section;
    [self performSegueWithIdentifier:@"showDetail" sender:nil];
   
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        DetailViewController *detailviewcontroller = [segue destinationViewController];

        data*sendData=[[data alloc] init];
        
        sendData.titulo1=_tituloFecha1a [currentRow];
        sendData.titulo2=_tituloFecha1b [currentRow];
        
        [detailviewcontroller setLoadData:sendData];
       // [detailviewcontroller.tituloLabel setText: _tituloFecha1a [row]];
      //  [detailviewcontroller.tituloLabel2 setText: _tituloFecha1b [row]];
        /*
        detailviewcontroller.detailModal = @[_tituloFecha1a [row],_imagenesFecha1a[row],_tituloFecha1b[row],_imagenesFecha1b[row],_tituloFecha2a[row],_imagenesFecha2a[row],_tituloFecha2b[row],_imagenesFecha2b[row],_tituloFecha3a[row],_imagenesFecha3a[row],_tituloFecha3b[row],_imagenesFecha3b[row],_tituloFecha4a [row],_imagenesFecha4a[row],_tituloFecha4b[row],_imagenesFecha4b[row]];*/
  
    }
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
