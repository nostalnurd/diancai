

#import "HeaderView.h"

@implementation HeaderView

@synthesize currrentInterfaceOrientation,wallTitleText;

-(void)rotate:(UIInterfaceOrientation)interfaceOrientation animation:(BOOL)animation{

	// set current interface orientation equals interface orientation 
	currrentInterfaceOrientation = interfaceOrientation;
}


-(void) setWallTitleText:(NSString *)wallTitle {
	// set wall title text
	wallTitleText = wallTitle;
	
	
	UIImageView* userImageView = [[UIImageView alloc] init];
	userImageView.image = [UIImage imageNamed:@"huoguo.jpg"];

	// the size of the photo in the header (x1, y1, x2, y2)
	[userImageView setFrame:CGRectMake(10, 1, 50, 48)];
	//[userImageView setFrame:CGRectMake(10,10,50,50)];

	// 
	[self addSubview:userImageView];
	[userImageView release];
	
	wallNameLabel = [[UILabel alloc] init];
	[wallNameLabel setText:wallTitle];
	wallNameLabel.font =[UIFont fontWithName:@"Helvetica" size:30];

	// set wall name label text color 
	[wallNameLabel setTextColor:RGBCOLOR(166,166,166)];
	wallNameLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	[wallNameLabel sizeToFit];
	[wallNameLabel setFrame:CGRectMake(userImageView.frame.origin.x + userImageView.frame.size.width + 10, 5, self.frame.size.width - (userImageView.frame.origin.x + userImageView.frame.size.width + 20), wallNameLabel.frame.size.height)];

	// add wall name label 
	[self addSubview:wallNameLabel];
	
}

-(void) dealloc {
	[wallNameLabel release];
	[wallTitleText release];
	[super dealloc];
}

@end
