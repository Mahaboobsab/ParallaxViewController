//
//  ViewController.m
//  ParallaxViewController
//
//  Created by Meheboob Nadaf on 17/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     self.headerImageViewHeight.constant = 250;
    
   
    [self adjustContentViewHeight];
    self.contentViewHeight.constant = [UIScreen mainScreen].bounds.size.height;
    
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, 180, 21)];
    lable.text = @"Meheboob Nadaf";
    lable.textColor = [UIColor whiteColor];
    [self.contentView addSubview:lable];
    
    UILabel *imageLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 220, 180, 20)];
    
    imageLabel.textColor = [UIColor whiteColor];
    imageLabel.text = @"iOS Developer";
    [self.headerImageView addSubview:imageLabel];
    [self.contentView addSubview:self.myTableView];
    //Arrays
    
    self.names = [[NSArray alloc] initWithObjects:@"Meheboob Nadaf",@"Raghavendra Dattawad",@"Bhagyashree Kandakur",@"Harish.K.N",@"Bhaskar.N.S",@"Sagar.K.D",@"Smitha",@"Amaresh",@"Ravi",@"Amit",@"VUmesh",@"Abdul",@"Sabiya",@"Rahil",@"Abhishek",@"Akash",@"Narendra",@"Soumya Dadutti",@"Shailahree Chougala",@"Sudha Bangalore", nil];
    
self.numbers = [[NSArray alloc] initWithObjects:@"8792269791",@"9686298090",@"998877665544",@"7788665434",@"9792269791",@"9992269791",@"8792269700",@"8792266691",@"9999269791",@"9892269791",@"8899269791",@"9872269791",@"8123919243",@"8123918189",@"9756420979",@"8792269420",@"8792269789",@"9978654532",@"887654321",@"8976543456", nil];
    
    self.allImages = [[NSArray alloc] initWithObjects:@"meheboob",@"jobs_150x150",@"kalam_150x150",@"meheboob",@"mark_150x150",@"meheboob",@"SRM_150x150",@"sahin",@"jobs_150x150",@"kalam_150x150",@"mark_150x150",@"meheboob",@"kalam_150x150",@"SRM_150x150",@"jobs_150x150",@"sahin_150x150",@"sahin",@"Head",@"Apple",@"Mango", nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.names.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }

    
    cell.textLabel.text = [self.names objectAtIndex:indexPath.row];
    
    cell.detailTextLabel.text = [self.numbers objectAtIndex:indexPath.row];
    //NSString *imageFile = [[NSBundle mainBundle]pathForResource:@"meheboob" ofType:@"jpg"];
    
    //UIImage *image = [[UIImage alloc]initWithContentsOfFile:imageFile];
    cell.imageView.image = [UIImage imageNamed:[self.allImages objectAtIndex:indexPath.row]];
    cell.imageView.layer.cornerRadius = cell.imageView.frame.size.width / 2;
    
    cell.imageView.layer.cornerRadius = cell.imageView.frame.size.height / 2;
    
    cell.imageView.clipsToBounds = YES;

    
    //[[cell imageView]setImage:image];
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return  cell;
}
@end
