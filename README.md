# SecureView
Enables you to hide ur UIViews and make them screen/screen shot proof. objective c/c++ only

# Usage 
```obj-c
UIWindow* mainWindow;

- (void) setup {
  mainWindow = [[UIApplication sharedApplication] windows].lastObject;

  SecureView *secureView = [SecureView new];
  secureView.frame = mainWindow.frame;
  [mainWindow addSubview:secureView];
}
```

based on: 
https://stackoverflow.com/questions/18680028/prevent-screen-capture-in-an-ios-app
