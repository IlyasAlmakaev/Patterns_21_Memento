//
//  Caretaker.h
//  Patterns_21_Memento
//
//  Created by Ильяс on 23.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Originator.h"
#import "Memento.h"

@interface Caretaker : NSObject

@property (nonatomic, strong) Originator *originator;
@property (nonatomic, strong) Memento *memento;

- (void)changeValue;
- (void)saveState;
- (void)loadState;

@end
