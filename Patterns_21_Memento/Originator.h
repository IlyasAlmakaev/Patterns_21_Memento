//
//  Originator.h
//  Patterns_21_Memento
//
//  Created by Ильяс on 23.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OriginatorState.h"

@interface Originator : NSObject

@property (nonatomic, strong) OriginatorState *localState;

- (void)changeValues;
- (OriginatorState *)getState;
- (void)setState:(OriginatorState *)oldState;

@end
