//
//  SessionMetrics.m
//  SessionMetrics
//
//  Created by Amine on 11/03/2022.
//

#import <Foundation/Foundation.h>
#import "SessionMetrics.h"
#import "SMSwizzlerManager.h"

@interface SessionMetrics()

@property (nonatomic, strong) SMSwizzlerManager* swizzleManager;

@end

@implementation SessionMetrics

static SessionMetrics *sharedInstance = nil;

- (instancetype)init {
    self.swizzleManager = [[SMSwizzlerManager alloc] init];
    return self;
}


+ (instancetype) sharedManager {
    @synchronized(self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc] init];
    }
    return sharedInstance;
}

- (void) enable {
    [[self swizzleManager] startSwizzling];
}

- (void) disable {
    [[self swizzleManager] stopSwizzling];
}
@end
