import UIKit
import PlaygroundSupport

//Problem
let rect = CGRect(x: 40, y: 40, width: 300, height: 250)
let view = UIView(frame: rect)
view.backgroundColor = UIColor.systemPink

view.layer.shadowColor = UIColor.red.cgColor
view.layer.shadowOffset = CGSize(width: 20, height: 20)
view.layer.shadowRadius = 20.0
view.layer.shadowOpacity = 0.7
view.layer.cornerRadius = 20.0
view.layer.masksToBounds = false
view.clipsToBounds = false
view.layer.borderColor = UIColor.gray.cgColor
view.layer.borderWidth = 4.0
let image = UIImage(named: "evening.jpeg")
let imageView = UIImageView(image: image)
imageView.frame = view.bounds
imageView.contentMode = .scaleAspectFill
view.addSubview(imageView)

//Solution
let newRect = CGRect(x: 40, y: 350, width: 300, height: 250)
let newView = UIView(frame: newRect)
newView.backgroundColor = UIColor.systemPink

newView.layer.shadowColor = UIColor.red.cgColor
newView.layer.shadowOffset = CGSize(width: 20, height: 20)
newView.layer.shadowRadius = 20.0
newView.layer.shadowOpacity = 0.7
newView.layer.cornerRadius = 20.0
newView.layer.borderColor = UIColor.gray.cgColor
newView.layer.borderWidth = 4.0
let image2 = UIImage(named: "evening.jpeg")
let imageLayer = CALayer()
imageLayer.contents = image2?.cgImage
imageLayer.frame = newView.bounds
imageLayer.masksToBounds = true
imageLayer.cornerRadius = 20.0
imageLayer.contentsGravity = .resizeAspectFill
newView.layer.addSublayer(imageLayer)

let controller = UIViewController()
controller.view.backgroundColor = UIColor.white
controller.view.addSubview(view)
controller.view.addSubview(newView)
PlaygroundPage.current.liveView = controller
