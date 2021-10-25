# week-04_HW_PROGRAMMATIC_VIEWS

## You are going to create an iOS application to choose the pet animal you like.

### Follow these steps :

- Create an XCode projec of type iOS app and interface Storyboard. Give it a Product Name : Choose My Pet
- Open your ViewController file
- Create  var segmentedControlView : UISegmentedControl!
- Create  var changeViewLabel : UILabel!
- Create  let choices = ["Bird", "Cat", "Horse"]
- Inside the func viewDidLoad , initalize and set the following views programmatically :
- - Initalize the segmentedControlView with items choices. *hint: use UISegmentedControl(items: choices)
- - set the property translatesAutoresizingMaskIntoConstraints of segmentedControlView to false
- - Add segmentedControlView to the super view . *hint: use view.addSubview(segmentedControlView)
- - Create and activate the appropriate constraints for the  segmentedControlView
- - Initialize changeViewLabel = UILabel()
- - uitilizing what you learnt previously, set the text of changeViewLabel to "Please Choose your Pet Animal", font size : 30, lineBreakMode : .byWordWrapping, number of lines : 4, textAlignment : .center
- - set the property translatesAutoresizingMaskIntoConstraints of changeViewLabel to false
- - Add changeViewLabel to the super view.   *hint: use view.addSubview(changeViewLabel)

### To detect and response for value changes in our segmentedControlView, we need to add a target , follow these steps:
- inside func  viewDidLoad , add the following line:  

       segmentedControlView.addTarget(self, action: #selector(controlValueChange(_ :)), for: .valueChanged)
 
- Inside our ViewController , add the following function :  


          
         @objc func controlValueChange(_ segControl : UISegmentedControl) {
            changeViewLabel.text = "Your pet animal is a \(choices[segControl.selectedSegmentIndex])  ! A good choice !"
          }
    
    
    
### Advanced :
- Create the applicaiton without a storyboard . Use the SceneDelegate.swift to set the root view Controller . *hint use the following code
        
        
        guard let windowScene = (scene as? UIWindowScene) else { return } 
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        self.window = window
        
### The app should look like this :
![alt text](https://github.com/T1000-Swift-Hail/week-04_HW_PROGRAMMATIC_VIEWS/blob/main/Simulator%20Screen%20Shot%20-%20iPod%20touch%20(7th%20generation)%20-%202021-10-25%20at%2011.27.51.png?raw=true)
