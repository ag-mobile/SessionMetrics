//
//  SMMetricsExtractor.m
//  SessionMetrics
//
//  Created by Amine on 14/03/2022.
//

#import "SMMetricsExtractor.h"

@implementation SMMetricsExtractor

-(void) processRequest:(NSURLRequest *)request withResponse:(NSURLResponse *)response withError:(NSError *)error withSession:(NSURLSession *) session {
//    NSDictionary *requestHeaders = [request allHeaderFields];
//    NSLog(@"requestHeaders = %@", requestHeaders);

    if ([response isKindOfClass: [NSHTTPURLResponse class]]) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        NSDictionary *responseHeaders = [httpResponse allHeaderFields];
        NSLog(@"responseHeaders = %@", responseHeaders);
    }
}

@end
