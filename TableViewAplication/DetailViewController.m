//
//  DetailViewController.m
//  TableViewAplication
//
//  Created by Héctor Omar Silva Díaz on 5/23/14.
//  Copyright (c) 2014 Hache Silva. All rights reserved.
//

#import "DetailViewController.h"
#import "data.h"
@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize loadData;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    _tituloLabel.text = loadData.titulo1;
   // _imagenView.image = [UIImage imageNamed:_detailModal[1]];
    _tituloLabel2.text = loadData.titulo2;
  //  _imagenView2.image = [UIImage imageNamed:_detailModal[3]];
 /*
    _tituloLabel.text = _detailModal[4];
    _imagenView.image = [UIImage imageNamed:_detailModal[5]];
    _tituloLabel2.text = _detailModal[6];
    _imagenView2.image = [UIImage imageNamed:_detailModal[7]];
    
    _tituloLabel.text = _detailModal[8];
    _imagenView.image = [UIImage imageNamed:_detailModal[9]];
    _tituloLabel2.text = _detailModal[10];
    _imagenView2.image = [UIImage imageNamed:_detailModal[11]];
    
    _tituloLabel.text = _detailModal[12];
    _imagenView.image = [UIImage imageNamed:_detailModal[13]];
    _tituloLabel2.text = _detailModal[14];
    _imagenView2.image = [UIImage imageNamed:_detailModal[15]];			

  */
    
    
    
    
    
   /* self.navigationItem.title = _detailModal[0];
    
    
 
    
    if ([_tituloLabel.text isEqualToString:@"dibujo1"]) {
        
        descripcion.image = [UIImage imageNamed:@"tazmania.jpg"];
        //descripcion2.text = @"ejemplo";
        
    }
    
    if ([_tituloLabel.text isEqualToString:@"dibujo2"]) {
        
        descripcion.image = [UIImage imageNamed:@"insecto1.jpg"];
        
    }

    
    if ([_tituloLabel.text isEqualToString:@"ejemplo1"]) {
        
        descripcion.image = [UIImage imageNamed:@"tazmania.jpg"];
        //descripcion2.text = @"ejemplo";
      
    }
    
    if ([_tituloLabel.text isEqualToString:@"ejemplo2"]) {
        
        descripcion.image = [UIImage imageNamed:@"insecto1.jpg"];
       
    }
    
    if ([_tituloLabel.text isEqualToString:@"ejemplo3"]) {
        
      
        
    }
    
    if ([_tituloLabel.text isEqualToString:@"ejemplo4"]) {
        
        
        
    }*/
    


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
