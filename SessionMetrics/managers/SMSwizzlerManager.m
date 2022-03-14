//
//  SMSwizzlerManager.m
//  SessionMetrics
//
//  Created by Amine on 14/03/2022.
//

#import "SMSwizzlerManager.h"
#import "../Dependencies/RSSwizzle/RSSwizzle.h"
#import "SMMetricsExtractor.h"

@interface SMSwizzlerManager()

@property (nonatomic, strong) SMMetricsExtractor *metricsExtractor;
@end

@implementation SMSwizzlerManager

- (instancetype)init {
    self.metricsExtractor = [[SMMetricsExtractor alloc] init];
    return self;
}

- (void) startSwizzling {
    SMMetricsExtractor *metricsExtractor = [self metricsExtractor];

    RSSwizzleInstanceMethod(NSURLSession,
                        @selector(dataTaskWithRequest:completionHandler:),
                        RSSWReturnType(NSURLSessionDataTask *),
                        RSSWArguments(NSURLRequest *request, void(^completionHandler)(NSData *data, NSURLResponse *response, NSError *error)),
                        RSSWReplacement({
        void(^cHandler)(NSData *data, NSURLResponse *response, NSError *error) = ^void(NSData *data, NSURLResponse *response, NSError *error){

            [metricsExtractor processRequest:request withResponse:response withError:error withSession:self];
            if (completionHandler != nil) {
                completionHandler(data, response, error);
            }
        };
        return RSSWCallOriginal(request, cHandler);
    }), 0, NULL);
    // TODO: implment swizzling for function covering different possible cases
}

- (void) stopSwizzling {
    // TODO: to be implemented
}

@end
