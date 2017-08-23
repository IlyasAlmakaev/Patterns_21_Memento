//
//  Originator.m
//  Patterns_21_Memento
//
//  Created by Ильяс on 23.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "Originator.h"

@implementation Originator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _localState = [[OriginatorState alloc] init];
        _localState.intValue = 100;
        _localState.stringValue = @"Hello World!";
    }
    return self;
}

- (void)changeValues {
    _localState.intValue++;
    _localState.stringValue = [NSString stringWithFormat:@"%@ %@", _localState.stringValue, @"!"];
    
    NSLog(@"Current state int = %i, string = %@", _localState.intValue, _localState.stringValue);
}

- (OriginatorState *)getState {
    return _localState;
}

- (void)setState:(OriginatorState *)oldState {
    _localState = oldState;
    
    NSLog(@"Load completed. Current state: int = %i, string = %@", _localState.intValue, _localState.stringValue);
}

@end
