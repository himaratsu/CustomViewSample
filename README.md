# CustomViewSample

Howt to create Custom UIView can be initialized from Nib file

## Usage

### Storyboard or xib

implement @IBDesignable and @IBInspectable 

![](http://cdn-ak.f.st-hatena.com/images/fotolife/h/himaratsu/20150726/20150726001117.gif)

![](http://cdn-ak.f.st-hatena.com/images/fotolife/h/himaratsu/20150726/20150726001213.gif)

### Code

```swift
let customView = MyCustomView(frame: CGRectMake(50, 200, 280, 200))
view.addSubview(customView)
```

# More Info

All step to create Custom view is written in http://himaratsu.hatenablog.com/entry/ios/customview .
