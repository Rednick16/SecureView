@interface SecureView : UIView
+ (instancetype)new;
- (instancetype)initWithFrame:(CGRect)frame;
- (void)setSecure:(BOOL)secure;
@end