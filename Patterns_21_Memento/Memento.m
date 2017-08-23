//
//  Memento.m
//  Patterns_21_Memento
//
//  Created by Ильяс on 23.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "Memento.h"

@implementation Memento

- (id)initWithState:(OriginatorState *)state {
    self = [super init];
    
    _localeState = [[OriginatorState alloc] init];
    [_localeState setIntValue:state.intValue];
    [_localeState setStringValue:state.stringValue];
    
    return self;
}
- (OriginatorState *)getState {
    return _localeState;
}

@end
