//

#import <UIKit/UIKit.h>


@interface playgame : UIViewController {

    
    IBOutlet UIView *Overlay;

    
	IBOutlet UILabel *label1;
	
	IBOutlet UIButton *red1;
	
	IBOutlet UIButton *green1;
	
	IBOutlet UIButton *blue1;
	
	IBOutlet UIButton *orange1;
	
	IBOutlet UIView *secondview;
	IBOutlet UIView *secondview1;
	
	IBOutlet UILabel *label2;
	
    
    IBOutlet UIButton *btnEnterSequenceButton;

	
	NSTimer* timer;
	NSTimer* timer1;
	NSTimer* timer2;
	int n;
	///
	int ahm;
	
	 int count;
	int score;
	float t1;
	float t2;
	 NSMutableArray *computer;
	 NSMutableArray *player;
	////
	NSString *s1;
	
	NSString *s2;
	
	
	/////
	
	int y;
	int y1;
	
	
	////
	int check;
	int check1;
	
	
	IBOutlet	UIButton *button;
	
    
    
    NSString *dadtt;
}

-(IBAction)blue;
-(IBAction)red;
-(IBAction)green;
-(IBAction)orange;
-(IBAction)startgame;
-(IBAction)Result;


-(IBAction)back1;



-(void)red_dim;



-(void)green_dim;


-(void)orange_dim;

-(void)yellow_dim;

-(void)red_dark;



-(void)green_dark;


-(void)orange_dark;

-(void)yellow_dark;
///////



-(void) redblink;
-(void) orangeblink;
-(void) blueblink;
-(void) greenblink;

-(void) gameover;


@property(nonatomic,strong)NSMutableArray *Janum;
@property(nonatomic,strong)NSMutableArray *babyJan;

@end
