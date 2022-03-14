//
//  SMMetricsExtractor.h
//  SessionMetrics
//
//  Created by Amine on 14/03/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMMetricsExtractor : NSObject

-(void) processRequest:(NSURLRequest *)request withResponse:(NSURLResponse *)response withError:(NSError *)error withSession:(NSURLSession *) session;

@end

NS_ASSUME_NONNULL_END
