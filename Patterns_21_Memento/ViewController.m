//
//  ViewController.m
//  Patterns_21_Memento
//
//  Created by Ильяс on 23.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "ViewController.h"
#import "Caretaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Caretaker *caretaker = [[Caretaker alloc] init];
    
    [caretaker changeValue];
    [caretaker saveState];
    [caretaker changeValue];
    [caretaker changeValue];
    [caretaker changeValue];
    [caretaker loadState];
}


@end
