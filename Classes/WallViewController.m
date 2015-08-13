

#import "WallViewController.h"
#import "TitleAndTextView.h"
#import "Layout5.h"
#import "Layout6.h"
#import "Layout7.h"
#import "Layout8.h"

#import "Layout1.h"
#import "Layout2.h"
#import "Layout3.h"
#import "Layout4.h"

#import "UIViewExtention.h"
#import "AFKPageFlipper.h"
#import "FullScreenView.h"
#import "FooterView.h"
#import "HeaderView.h"

#import "MessageModel.h"

@implementation WallViewController

@synthesize viewControlerStack,gestureRecognizer,wallTitle;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
   
    if ( self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		[self.view setBackgroundColor:[UIColor whiteColor]];
		isInFullScreenMode = FALSE;
		
		messageArrayCollection = [[NSMutableArray alloc] init];
		
			// message 1
			MessageModel* messageModel1 = [[MessageModel alloc] init];
			messageModel1.messageID= 1;
			messageModel1.userName = @"自选酱料";
			messageModel1.userImage =  @"missing-people.png";
			messageModel1.createdAt = @"5元每份";
			messageModel1.content = @"沙茶酱，番茄酱，醋，酱油，芝麻酱.";
			
			[messageArrayCollection addObject:messageModel1];
			[messageModel1 release];
		
        
        // message 2
        MessageModel* messageModel2 = [[MessageModel alloc] init];
        messageModel2.messageID= 2;
        messageModel2.userName = @"五花肉片";
        messageModel2.userImage =  @"missing-people.png";
        messageModel2.createdAt = @"12元／份";
        messageModel2.content = @"五花肉片哦";
        
        [messageArrayCollection addObject:messageModel2];
        [messageModel2 release];
        
        //message 4
        
        MessageModel* messageModel4 = [[MessageModel alloc] init];
        messageModel4.messageID= 4;
        messageModel4.userName = @"糖醋排骨";
        messageModel4.userImage =  @"missing-people.png";
        messageModel4.createdAt = @"06/07/2011 at 01:00 AM";
        messageModel4.content = @"糖醋排骨";
        
        [messageArrayCollection addObject:messageModel4];
        [messageModel4 release];
        
        // message 3
        MessageModel* messageModel3 = [[MessageModel alloc] init];
        messageModel3.messageID= 3;
        messageModel3.userName = @"自选饮料";
        messageModel3.userImage =  @"missing-people.png";
        messageModel3.createdAt = @"5元一瓶";
        messageModel3.content = @"青岛啤酒，可口可乐，雪碧，芬达。";
        
        [messageArrayCollection addObject:messageModel3];
        [messageModel3 release];

        
        // message 5
        MessageModel* messageModel5 = [[MessageModel alloc] init];
        messageModel5.messageID= 5;
        messageModel5.userName = @"山药";
        messageModel5.userImage =  @"shanyao.jpg";
        messageModel5.createdAt = @"8元／盘";
        messageModel5.content = @"山药哦新鲜的山药哦.";
        
        [messageArrayCollection addObject:messageModel5];
        [messageModel5 release];
        
        
        // message 6
        MessageModel* messageModel6 = [[MessageModel alloc] init];
        messageModel6.messageID= 6;
        messageModel6.userName = @"玉米饼";
        messageModel6.userImage =  @"missing-people.png";
        messageModel6.createdAt = @"25RMB";
        messageModel6.content = @"玉米饼";
        
        [messageArrayCollection addObject:messageModel6];
        [messageModel6 release];
        

        
        // message 7
        MessageModel* messageModel7 = [[MessageModel alloc] init];
        messageModel7.messageID= 7;
        messageModel7.userName = @"自选酱料";
        messageModel7.userImage =  @"missing-people.png";
        messageModel7.createdAt = @"5元每份";
        messageModel7.content = @"沙茶酱，番茄酱，醋，酱油，芝麻酱.";
        
        [messageArrayCollection addObject:messageModel7];
        [messageModel7 release];
        
        
        // message 8
        MessageModel* messageModel8 = [[MessageModel alloc] init];
        messageModel8.messageID= 8;
        messageModel8.userName = @"五花肉片";
        messageModel8.userImage =  @"missing-people.png";
        messageModel8.createdAt = @"12元／份";
        messageModel8.content = @"五花肉片哦";
        
        [messageArrayCollection addObject:messageModel8];
        [messageModel8 release];
        
        //message 9
        
        MessageModel* messageModel9 = [[MessageModel alloc] init];
        messageModel9.messageID= 9;
        messageModel9.userName = @"糖醋排骨";
        messageModel9.userImage =  @"missing-people.png";
        messageModel9.createdAt = @"06/07/2011 at 01:00 AM";
        messageModel9.content = @"糖醋排骨";
        
        [messageArrayCollection addObject:messageModel9];
        [messageModel9 release];
        
        // message 10
        MessageModel* messageModel10 = [[MessageModel alloc] init];
        messageModel10.messageID= 10;
        messageModel10.userName = @"自选饮料";
        messageModel10.userImage =  @"missing-people.png";
        messageModel10.createdAt = @"5元一瓶";
        messageModel10.content = @"青岛啤酒，可口可乐，雪碧，芬达。";
        
        [messageArrayCollection addObject:messageModel10];
        [messageModel10 release];
        
        
        // message 11
        MessageModel* messageModel11 = [[MessageModel alloc] init];
        messageModel11.messageID= 11;
        messageModel11.userName = @"山药";
        messageModel11.userImage =  @"shanyao.jpg";
        messageModel11.createdAt = @"8元／盘";
        messageModel11.content = @"山药哦新鲜的山药哦.";
        
        [messageArrayCollection addObject:messageModel11];
        [messageModel11 release];
        
        
        // message 12
        MessageModel* messageModel12 = [[MessageModel alloc] init];
        messageModel12.messageID= 12;
        messageModel12.userName = @"玉米饼";
        messageModel12.userImage =  @"missing-people.png";
        messageModel12.createdAt = @"25RMB";
        messageModel12.content = @"玉米饼";
        
        [messageArrayCollection addObject:messageModel12];
        [messageModel12 release];

        
        
        
        // message 13
        MessageModel* messageModel13 = [[MessageModel alloc] init];
        messageModel13.messageID= 13;
        messageModel13.userName = @"自选酱料";
        messageModel13.userImage =  @"missing-people.png";
        messageModel13.createdAt = @"5元每份";
        messageModel13.content = @"沙茶酱，番茄酱，醋，酱油，芝麻酱.";
        
        [messageArrayCollection addObject:messageModel13];
        [messageModel13 release];
        
        
        // message 141
        MessageModel* messageModel14 = [[MessageModel alloc] init];
        messageModel14.messageID= 14;
        messageModel14.userName = @"五花肉片";
        messageModel14.userImage =  @"missing-people.png";
        messageModel14.createdAt = @"12元／份";
        messageModel14.content = @"五花肉片哦";
        
        [messageArrayCollection addObject:messageModel14];
        [messageModel14 release];
        
        //message 15
        
        MessageModel* messageModel15 = [[MessageModel alloc] init];
        messageModel15.messageID= 15;
        messageModel15.userName = @"糖醋排骨";
        messageModel15.userImage =  @"missing-people.png";
        messageModel15.createdAt = @"06/07/2011 at 01:00 AM";
        messageModel15.content = @"糖醋排骨";
        
        [messageArrayCollection addObject:messageModel15];
        [messageModel15 release];
        
        // message 16
        MessageModel* messageModel16 = [[MessageModel alloc] init];
        messageModel16.messageID= 16;
        messageModel16.userName = @"自选饮料";
        messageModel16.userImage =  @"missing-people.png";
        messageModel16.createdAt = @"5元一瓶";
        messageModel16.content = @"青岛啤酒，可口可乐，雪碧，芬达。";
        
        [messageArrayCollection addObject:messageModel16];
        [messageModel16 release];
        
        
        // message 17
        MessageModel* messageModel17 = [[MessageModel alloc] init];
        messageModel17.messageID= 17;
        messageModel17.userName = @"山药";
        messageModel17.userImage =  @"shanyao.jpg";
        messageModel17.createdAt = @"8元／盘";
        messageModel17.content = @"山药哦新鲜的山药哦.";
        
        [messageArrayCollection addObject:messageModel17];
        [messageModel17 release];
        
        
        // message 18
        MessageModel* messageModel18 = [[MessageModel alloc] init];
        messageModel18.messageID= 18;
        messageModel18.userName = @"玉米饼";
        messageModel18.userImage =  @"missing-people.png";
        messageModel18.createdAt = @"25RMB";
        messageModel18.content = @"玉米饼";
        
        [messageArrayCollection addObject:messageModel18];
        [messageModel18 release];

        
        
        
        
        
        
		
		[self buildPages:messageArrayCollection];
		
		flipper = [[AFKPageFlipper alloc] initWithFrame:self.view.bounds];
		flipper.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		flipper.dataSource = self;
		[self.view addSubview:flipper];
		
    }
    return self;
}

- (int)getRandomNumber:(int)from to:(int)to {
	return (int)from + random() % (to-from+1);
}


-(void)buildPages:(NSArray*)messageArray {
	
	self.view.autoresizesSubviews = YES;
	self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	viewControlerStack = [[NSMutableArray alloc] init]; 
	
	int remainingMessageCount = 0;
	int totalMessageCount = [messageArray count];
	int numOfGroup = totalMessageCount /5;
	
	remainingMessageCount = totalMessageCount;
	
	for (int i=1; i<=numOfGroup; i++) {
		
		remainingMessageCount = totalMessageCount - (i * 5);
		int randomNumber = [self getRandomNumber:5 to:8];
		
		[viewControlerStack addObject:[NSString stringWithFormat:@"%d",randomNumber]];
	}
	
	if (remainingMessageCount > 0) {
		[viewControlerStack addObject:[NSString stringWithFormat:@"%d",remainingMessageCount]];
	}

	
}


#pragma mark -
#pragma mark Data source implementation



- (NSInteger) numberOfPagesForPageFlipper:(AFKPageFlipper *)pageFlipper {
	return [viewControlerStack count];
}

- (UIView *) viewForPage:(NSInteger) page inFlipper:(AFKPageFlipper *) pageFlipper {

  	LayoutViewExtention* layoutToReturn = nil;
	NSInteger layoutNumber = [[viewControlerStack objectAtIndex:page-1] intValue];
	
	int remainingMessageCount = 0;
	int totalMessageCount = [messageArrayCollection count];
	int numOfGroup = totalMessageCount /5;
	remainingMessageCount = totalMessageCount - (numOfGroup * 5);	
	
	int rangeFrom = 0;
	int rangeTo = 0;
	BOOL shouldContinue = FALSE;
	
	if (page <= numOfGroup) {
		rangeFrom = (page * 5) -5;
		rangeTo = 5;
		shouldContinue = TRUE;
	}else if (remainingMessageCount > 0) {
		rangeFrom = [messageArrayCollection count] - remainingMessageCount;
		rangeTo = remainingMessageCount;
		shouldContinue = TRUE;
	}
	
	if (shouldContinue) {
		
		NSRange rangeForView = NSMakeRange(rangeFrom, rangeTo);
		
		NSArray* messageArray= [messageArrayCollection subarrayWithRange:rangeForView];
		
		NSMutableDictionary* viewDictonary = [[[NSMutableDictionary alloc] init] autorelease];
		TitleAndTextView* view1forLayout;
		TitleAndTextView* view2forLayout;
		TitleAndTextView* view3forLayout;
		TitleAndTextView* view4forLayout;
		TitleAndTextView* view5forLayout;
		for (int i = 0; i < [messageArray count]; i++) {
			if (i == 0) {
				view1forLayout = [[[TitleAndTextView alloc] initWithMessageModel:(MessageModel*)[messageArray objectAtIndex:i]] autorelease];
				[viewDictonary setObject:view1forLayout forKey:@"view1"];
			}
			if (i == 1) {
				view2forLayout = [[[TitleAndTextView alloc] initWithMessageModel:(MessageModel*)[messageArray objectAtIndex:i]] autorelease];
				[viewDictonary setObject:view2forLayout forKey:@"view2"];
			}
			if (i == 2) {
				view3forLayout = [[[TitleAndTextView alloc] initWithMessageModel:(MessageModel*)[messageArray objectAtIndex:i]] autorelease];
				[viewDictonary setObject:view3forLayout forKey:@"view3"];
			}
			if (i == 3) {
				view4forLayout = [[[TitleAndTextView alloc] initWithMessageModel:(MessageModel*)[messageArray objectAtIndex:i]] autorelease];
				[viewDictonary setObject:view4forLayout forKey:@"view4"];
			}
			if (i == 4) {
				view5forLayout = [[[TitleAndTextView alloc] initWithMessageModel:(MessageModel*)[messageArray objectAtIndex:i]] autorelease];
				[viewDictonary setObject:view5forLayout forKey:@"view5"];
			}
		}
		
		Class class =  NSClassFromString([NSString stringWithFormat:@"Layout%d",layoutNumber]);
		id layoutObject = [[[class alloc] init] autorelease];
		
		if ([layoutObject isKindOfClass:[LayoutViewExtention class]] ) {
			
			layoutToReturn = (LayoutViewExtention*)layoutObject;
			
			[layoutToReturn initalizeViews:viewDictonary];
			[layoutToReturn rotate:self.interfaceOrientation animation:NO];
			[layoutToReturn setFrame:self.view.bounds];
			layoutToReturn.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
			
			HeaderView* headerView = [[HeaderView alloc] initWithFrame:CGRectMake(0, 0, layoutToReturn.frame.size.width, 50)];
			headerView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
			[headerView setWallTitleText:@"尚品火锅"];
			[headerView setBackgroundColor:[UIColor whiteColor]];
			[headerView rotate:self.interfaceOrientation animation:NO];
			[layoutToReturn setHeaderView:headerView];
			[headerView release];
			
			FooterView* footerView = [[FooterView alloc] initWithFrame:CGRectMake(0, layoutToReturn.frame.size.height - 20, layoutToReturn.frame.size.width, 20)];
			[footerView setBackgroundColor:[UIColor whiteColor]];
			[footerView setFlipperView:flipper];
			[footerView setViewArray:viewControlerStack];
			
			if (self.interfaceOrientation == UIInterfaceOrientationPortrait || self.interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
				[footerView setFrame:CGRectMake(0, 1004 - 20, 768, footerView.frame.size.height)];
			}else {
				[footerView setFrame:CGRectMake(0, 748 - 20, 1024, footerView.frame.size.height)];
			}
			[footerView rotate:self.interfaceOrientation animation:YES];
			
			[layoutToReturn setFooterView:footerView];
			[footerView release];
		}
	}
	
	return layoutToReturn;
}

-(void)showViewInFullScreen:(UIViewExtention*)viewToShow withModel:(MessageModel*)model{
	if (!isInFullScreenMode) {
		isInFullScreenMode = TRUE;
		
		CGRect bounds = [UIScreen mainScreen].bounds;
		if (self.interfaceOrientation == UIInterfaceOrientationLandscapeLeft || self.interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
			CGFloat width = bounds.size.width;
			bounds.size.width = bounds.size.height;
			bounds.size.height = width;
		}
		
		
		fullScreenBGView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, bounds.size.width, bounds.size.height)];
		fullScreenBGView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		[fullScreenBGView setBackgroundColor:RGBACOLOR(0,0,0,0.6)];
		fullScreenBGView.alpha = 0;
		[self.view addSubview:fullScreenBGView];
		
		
		viewToShowInFullScreen =  viewToShow;
		viewToShowInFullScreen.originalRect = viewToShowInFullScreen.frame;
		viewToShowInFullScreen.isFullScreen = TRUE;
		FullScreenView* fullView = [[FullScreenView alloc] initWithModel:model];
		fullView.frame = viewToShowInFullScreen.frame;
		fullView.viewToOverLap = viewToShowInFullScreen;
		fullView.fullScreenBG = fullScreenBGView;
		fullScreenView = fullView;
		[self.view addSubview:fullView];
		
		[self.view bringSubviewToFront:fullScreenBGView];	
		[self.view bringSubviewToFront:fullView];
		
		[UIView beginAnimations:@"SHOWFULLSCREEN" context:NULL];
		[UIView setAnimationDuration:0.40];
		[UIView setAnimationTransition:UIViewAnimationTransitionNone forView:nil cache:NO];
		fullScreenBGView.alpha = 1;
		if (self.interfaceOrientation == UIInterfaceOrientationPortrait || self.interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
			[fullView setFrame:CGRectMake(10, 80, 768-20, 1004-60)];
		}else {
			[fullView setFrame:CGRectMake(10, 80, 1024-20, 746-60)];
		}
		[fullScreenView rotate:self.interfaceOrientation animation:YES];
		[UIView setAnimationDelegate:self];
		[UIView setAnimationDidStopSelector:@selector(animationEnd:finished:context:)];	
		[UIView commitAnimations];
		
	}

	
}

-(void)closeFullScreen {
	if (fullScreenView != nil) {
		fullScreenBGView.alpha=0;
		[fullScreenBGView removeFromSuperview];
		[fullScreenBGView release];
		
		fullScreenView.alpha = 0;
		[fullScreenView removeFromSuperview];
		[fullScreenView release];
		fullScreenView = nil;
		isInFullScreenMode = FALSE;
	}
}

-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
	if (fullScreenView != nil) {

//
		[UIView beginAnimations:@"WILLROTATE" context:NULL];
		[UIView setAnimationDuration:0.50];
		[UIView setAnimationCurve:UIViewAnimationOptionCurveEaseInOut];
		if (toInterfaceOrientation == UIInterfaceOrientationPortrait || toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
			[fullScreenView setFrame:CGRectMake(10, 50, 768-20, 1004-60)];
		}else {
			[fullScreenView setFrame:CGRectMake(10, 50, 1024-20, 748-60)];
		}
		[fullScreenView rotate:toInterfaceOrientation animation:YES];
		[UIView setAnimationDelegate:self];
		[UIView setAnimationDidStopSelector:@selector(animationEnd:finished:context:)];	
		[UIView commitAnimations];
	}
	
	
	if ([viewControlerStack count] > 0 && [flipper.subviews count] > 0) {
		
		for (UIView* subview in flipper.subviews) {
			if ([subview isKindOfClass:[LayoutViewExtention class]]) {
				LayoutViewExtention* layoutView = (LayoutViewExtention*)subview;
				[layoutView rotate:toInterfaceOrientation animation:YES];
				layoutView.footerView.alpha = 0;
				[UIView beginAnimations:nil context:NULL];
				[UIView setAnimationDuration:0.10];
				if (toInterfaceOrientation == UIInterfaceOrientationPortrait || toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
					[layoutView.footerView setFrame:CGRectMake(0, 1004 - 20, 768, layoutView.footerView.frame.size.height)];
				}else {
					[layoutView.footerView setFrame:CGRectMake(0, 748 - 20, 1024, layoutView.footerView.frame.size.height)];
				}
				[layoutView.footerView rotate:toInterfaceOrientation animation:YES];
				[layoutView.headerView rotate:toInterfaceOrientation animation:YES];
				[UIView commitAnimations];
			}
			
		}
		
	}
	
}

-(void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
	if ([viewControlerStack count] > 0 && [flipper.subviews count] > 0) {
		for (UIView* subview in flipper.subviews) {
			if ([subview isKindOfClass:[LayoutViewExtention class]]) {
				LayoutViewExtention* layoutView = (LayoutViewExtention*)subview;
				layoutView.footerView.alpha = 1;
			}
		}
	}
}

- (void)animationEnd:(NSString*)animationID finished:(NSNumber*)finished context:(void*)context {
	if ([animationID isEqualToString:@"WILLROTATE"]) {
		if (fullScreenView != nil) {
			[fullScreenView setBackgroundColor:RGBACOLOR(0,0,0,0.6)];
		}		
	}else if ([animationID isEqualToString:@"FOOTER"]) {
		if (context) {
			((UIView*)context).alpha = 1;
		}
	}else if ([animationID isEqualToString:@"SHOWFULLSCREEN"]) {
		[fullScreenView showFields];
	}
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	if (flipper) {
		return !flipper.animating;
	}
	
	return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)viewDidUnload {
    [super viewDidUnload];
}


-(void) generateViews:(NSArray *)currentMesageArray {
	
	int remainingMessageCount = 0;
	int totalMessageCount = [currentMesageArray count];
	int numOfGroup = totalMessageCount /5;
	
	remainingMessageCount = totalMessageCount;
	
	for (int i=1; i<=numOfGroup; i++) {
		remainingMessageCount = totalMessageCount - (i * 5);
		int randomNumber = [self getRandomNumber:1 to:8];
		
		[viewControlerStack addObject:[NSString stringWithFormat:@"%d",randomNumber]];
	}
	
	if (remainingMessageCount > 0) {
		numOfGroup += 1;
		[viewControlerStack addObject:[NSString stringWithFormat:@"%d",remainingMessageCount]];
	}
	
	flipper.numberOfPages = [viewControlerStack count];	
	
	if ([viewControlerStack count] > 0 && flipper.currentView) {
		if ([flipper.currentView isKindOfClass:[LayoutViewExtention class]]) {
			LayoutViewExtention* layoutView = (LayoutViewExtention*)flipper.currentView;
			[layoutView.footerView performSelectorInBackground:@selector(updateBarButtons:) withObject:[NSString stringWithFormat:@"%d",numOfGroup]];
		}
	}
}

- (void)dealloc {
	[[NSNotificationCenter defaultCenter] removeObserver:self];

	[messageArrayCollection release];
	if (fullScreenBGView != nil) {
		[fullScreenBGView release];
	}
	[viewControlerStack release];
	[gestureRecognizer release];
	[flipper release];
	if (fullScreenView != nil) {
		[fullScreenView release];
	}
	[wallTitle release];
    [super dealloc];
}


@end
