//
//  SessionMetrics.h
//  SessionMetrics
//
//  Created by Amine on 06/03/2022.
//

#import <Foundation/Foundation.h>

//! Project version number for SessionMetrics.
FOUNDATION_EXPORT double SessionMetricsVersionNumber;

//! Project version string for SessionMetrics.
FOUNDATION_EXPORT const unsigned char SessionMetricsVersionString[];

/**
 * class to enable or disable NSURLSession metrics collection
 */
@interface SessionMetrics : NSObject

/**
 * shared instance of the SessionMetrics class
 */
+ (instancetype) sharedManager;

/**
 * enable NSURLSession metrics collection
 */
- (void) enable;

/**
 * disable NSURLSession metrics collection
 */
- (void) disable;

@end
