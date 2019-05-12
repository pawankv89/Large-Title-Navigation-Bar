# Large-Title-Navigation-Bar

=========

## Large Title Navigation Bar in Swift 5.

### In this demo show Large Title Navigation Bar.

------------
Added Some screens here.

![](https://github.com/pawankv89/Large-Title-Navigation-Bar/blob/master/images/screen_1.png)




## Usage
------------

#### Large Title Navigation Bar

```swift

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
// Override point for customization after application launch.


//Navigation Configuration
if #available(iOS 11.0, *) {

UINavigationBar.appearance().prefersLargeTitles = true
UINavigationBar.appearance().tintColor = UIColor.white
UINavigationBar.appearance().largeTitleTextAttributes =
[NSAttributedString.Key.foregroundColor: UIColor.blue,
NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30)]

UINavigationBar.appearance().titleTextAttributes =
[NSAttributedString.Key.foregroundColor: UIColor.blue,
NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]

} else {
// Fallback on earlier versions
}

return true
}

```

#### Large Title Navigation Bar

```swift


func multiLineLargeTitleInNavigationBar(viewController: UIViewController, title: String) -> Void {

//Navigation Configuration
if #available(iOS 11.0, *) {

viewController.navigationController?.navigationBar.prefersLargeTitles = true
viewController.navigationController?.navigationItem.largeTitleDisplayMode = .automatic

/*
viewController.navigationController?.navigationBar.largeTitleTextAttributes = [
NSAttributedStringKey.foregroundColor: UIColor.white,
NSAttributedStringKey.font : UIFont.preferredFont(forTextStyle: .largeTitle)
]*/

}else {

}

//Update Large Label
var count = 0
for navItem in(viewController.navigationController?.navigationBar.subviews)! {
for itemSubView in navItem.subviews {
if let largeLabel = itemSubView as? UILabel {
if count == 1 {
break;
}
largeLabel.text = title
largeLabel.numberOfLines = 0
largeLabel.lineBreakMode = .byWordWrapping
count = count + 1
}
}
}

//Update Navigation Title
viewController.navigationController?.navigationBar.layoutSubviews()
viewController.navigationController?.navigationBar.layoutIfNeeded()
}


```

#### Large Title Navigation Bar

```swift

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.
tableView.dataSource = self

self.title = "Hi this is big title, For navigation large style bar"

let appDelegate = UIApplication.shared.delegate as! AppDelegate
appDelegate.multiLineLargeTitleInNavigationBar(viewController: self, title: self.title!)
}

```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
