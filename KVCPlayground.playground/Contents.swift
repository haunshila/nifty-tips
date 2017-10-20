//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    let label = UILabel()

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
       
    }
}

// Present the view controller in the Live View window
let myVC = MyViewController()
let observation = myVC.label.observe(\.text) { (lbl, change) in
    print("new labelText: \(lbl.text)")
}
print(observation)

PlaygroundPage.current.liveView = myVC
//Check in console for KVO
myVC.label.text = "Hello"
myVC.label.text = "Hello1"


