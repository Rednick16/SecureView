# SecureView
Enables you to hide ur UIViews and make them screen recording/screenshot proof.

# Usage 
```obj-c
- (void) setup {
  UIWindow* mainWindow = [[UIApplication sharedApplication] windows].lastObject;

  UIView *view = [[UIView alloc] init];
  view.frame = mainWindow.frame;
  [view hideViewFromCapture:YES]; // toggleable
  [mainWindow addSubview:view];
}
```

based on:
https://nsantoine.dev/posts/CALayerCaptureHiding
