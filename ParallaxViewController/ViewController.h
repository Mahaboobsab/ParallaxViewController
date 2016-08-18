//
//  ViewController.h
//  ParallaxViewController
//
//  Created by Meheboob Nadaf on 17/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ParallaxViewController.h"

@interface ViewController : ParallaxViewController<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)NSArray *names;
@property(strong,nonatomic)NSArray *numbers;
@property(strong,nonatomic)NSArray *allImages;

@end

