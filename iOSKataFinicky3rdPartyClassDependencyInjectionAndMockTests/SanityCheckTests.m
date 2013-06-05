#import <SenTestingKit/SenTestingKit.h>
#import "OCMockObject.h"
#import "ISanityCheck.h"

@interface SanityCheckTests : SenTestCase

@end

@implementation SanityCheckTests

- (void)testSanityCheck_OCUnit {

    STAssertTrue(true, @"OCUnit is not properly installed");
}

-(void)testSanityCheck_OCMock {

    id sanityCheck = [OCMockObject mockForProtocol:@protocol(ISanityCheck)];
    [sanityCheck verify];
}
@end
