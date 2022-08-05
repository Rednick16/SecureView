#import "SecureView.h"

@interface SecureView()
@property (nonatomic, strong) UITextField *field;
@end

@implementation SecureView
+ (instancetype)new {
    return [[[self class] alloc] initWithFrame:CGRectNull];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self){
        [self setup];
    }
    return self;
}

- (void)setup {
    dispatch_async(dispatch_get_main_queue(), ^{        
        self.field = [[UITextField alloc]init];
        self.field.userInteractionEnabled = NO;
        // self.field.secureTextEntry = YES;
        [self addSubview:self.field];

        [self.layer.superlayer addSublayer:self.field.layer];
        [self.field.layer.sublayers.firstObject addSublayer:self.layer];
    });
}

- (void)setSecure:(BOOL)active {
    self.field.secureTextEntry = active;
}
@end