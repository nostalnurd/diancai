

#import "FlipViewAppDelegate.h"
#import "WallViewController.h"

@implementation FlipViewAppDelegate

@synthesize window;
@synthesize viewController;


+ (FlipViewAppDelegate *) instance {
	return (FlipViewAppDelegate *) [[UIApplication sharedApplication] delegate];
}

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch. 
	viewController = [[WallViewController alloc] initWithNibName:nil bundle:nil];
	
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];

	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
   
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
  
}


- (void)applicationWillTerminate:(UIApplication *)application {
  
}

-(void)showViewInFullScreen:(UIViewExtention*)viewToShow withModel:(MessageModel*)model{
	[viewController showViewInFullScreen:viewToShow withModel:model];
}
-(void)closeFullScreen {
	[viewController closeFullScreen];
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
   
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
