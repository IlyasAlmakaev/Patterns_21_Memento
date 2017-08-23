//
//  Caretaker.m
//  Patterns_21_Memento
//
//  Created by Ильяс on 23.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "Caretaker.h"

@implementation Caretaker

- (void)changeValue {
    if (!_originator) {
        _originator = [[Originator alloc] init];
    }
    [_originator changeValues];
}

- (void)saveState {
    _memento = [[Memento alloc] initWithState:[_originator getState]];
    NSLog(@"Saved state. State int = %i and string = %@", [[_memento getState] intValue], [[_memento getState] stringValue]);
}

- (void)loadState {
    [_originator setState:[_memento getState]];
}

@end
