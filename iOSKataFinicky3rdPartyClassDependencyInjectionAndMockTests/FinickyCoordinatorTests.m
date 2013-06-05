//
//  FinickyCoordinatorTests.m
#import <SenTestingKit/SenTestingKit.h>
#import "OCMockObject.h"
#import "IFinickyWrapper.h"
#import "OCMockRecorder.h"
#import "FinickyCoordinator.h"
#import "FinickyThirdPartyApp.h"

@interface FinickyCoordinatorTests : SenTestCase

@end

@implementation FinickyCoordinatorTests {
    id _finickyWrapper;
}

-(void)setUp {
    [super setUp];
    _finickyWrapper = [OCMockObject mockForProtocol:@protocol(IFinickyWrapper)];
}

-(void)test_GivenSUT_WhenCustomMethodCalled_ThenReturnsExpectedString {

    // setup
    // handled in setup

    // expectations
    NSString *expectation = @"Expected value returned";
    [[[_finickyWrapper expect] andReturn:expectation] doSomethingProprietary];


    // test
    FinickyCoordinator *sut = [[FinickyCoordinator alloc] initWithFinickyWrapper:_finickyWrapper];
    NSString *result = [sut doCustomAction];
    STAssertEquals(result, expectation, @"result does NOT equal expectation");

    // verify
    // handled in teardown


}

-(void)tearDown {
    [super tearDown];
    [_finickyWrapper verify];
}
@end
