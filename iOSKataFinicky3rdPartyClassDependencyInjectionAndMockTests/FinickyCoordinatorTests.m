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
    FinickyThirdPartyApp *_finickyThirdPartyApp;
}

-(void)setUp {
    [super setUp];
    _finickyThirdPartyApp = [[FinickyThirdPartyApp alloc] init];
    _finickyWrapper = [OCMockObject mockForProtocol:@protocol(IFinickyWrapper)];
}

- (void)test_FinickyThirdParty_Calls_doSomethingProprietary_ThrowsExpectedException {
    NSString *expected = @"I'm FINICKY about licensing on dev machines! You can't use me, dev!";
    STAssertThrowsSpecificNamed([_finickyThirdPartyApp doSomethingProprietary], NSException, expected, @"");
}

-(void)test_FinickyThirdPartyAppSanityCheck {

    STAssertNotNil(_finickyThirdPartyApp, nil);
}

//-(void)test_GivenSUT_WhenCustomMethodCalled_ThenReturnsExpectedString {
//
//    // setup
//    // handled in setup
//
//    // expectations
//    NSString *expectation = @"Expected value returned";
//    [[[_finickyWrapper expect] andReturn:expectation] doSomethingProprietary];
//
//    FinickyCoordinator *finickyCoordinator = [[FinickyCoordinator alloc] initWithFinickyWrapper:_finickyWrapper];
//
//    // test
//
//    // verify
//    // handled in teardown
//
//
//}

-(void)tearDown {
    [super tearDown];
    [_finickyWrapper verify];
}
@end
