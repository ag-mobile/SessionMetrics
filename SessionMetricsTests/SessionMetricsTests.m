//
//  SessionMetricsTests.m
//  SessionMetricsTests
//
//  Created by Amine on 06/03/2022.
//

#import <XCTest/XCTest.h>
#import "SessionMetrics.h"

@interface SessionMetricsTests : XCTestCase

@end

@implementation SessionMetricsTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [[SessionMetrics sharedManager] enable];
    NSURLSessionConfiguration* config = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
//    NSURLSessionDataTask* task = [session dataTaskWithURL:[NSURL URLWithString:@"https://google.com"]];
    NSURLSessionDataTask* task = [session dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.google.com"]] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //
    }];
  [task resume];
    sleep(5);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
