import PlaygroundSupport
import UIKit

class ViewController: UIViewController {
    
    var exampleView: UIView!
    var secondView: UIView!
    
    override func loadView() {
        super.loadView()
        
        self.view.backgroundColor = UIColor.white
        exampleView = UIView(frame: .zero)
        exampleView.backgroundColor = .systemBlue
        exampleView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(exampleView)
        
        secondView = UIView(frame: .zero)
        secondView.backgroundColor = .systemRed
        secondView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(secondView)
        
        NSLayoutConstraint.activate([
            exampleView.widthAnchor.constraint(equalToConstant: 80),
            exampleView.heightAnchor.constraint(equalTo: exampleView.widthAnchor, multiplier: 1),
            exampleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            exampleView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            secondView.widthAnchor.constraint(equalToConstant: 100),
            secondView.heightAnchor.constraint(equalTo: secondView.widthAnchor, multiplier: 1),
            secondView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            secondView.leftAnchor.constraint(equalTo: exampleView.rightAnchor, constant: 5)
        ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exampleView.backgroundColor = .blue
    }
}

PlaygroundPage.current.liveView = ViewController()
