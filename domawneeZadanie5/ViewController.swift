//  Created by doschitai on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {
    let myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Logout", for: .normal)
        button.configuration = .filled()
        button.addTarget(self, action: #selector(myButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let myLabel1: UILabel = {
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "Lorem nipsum dolor\nsit amet"
        label1.numberOfLines = 0
        return label1
    }()
    
    let myLabel2: UILabel = {
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design."
        label2.numberOfLines = 0
        return label2
    }()
    
    let myView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .purple
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.layer.cornerRadius = 30
        return myView
    }()
    
    let myCircle: UIView = {
        let circle = UIView()
        circle.backgroundColor = .orange
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.layer.cornerRadius = 50
        return circle
        
    }()
    
    let myIcon: UIButton = {
        let icon = UIButton()
        let symbolConfiguration = UIImage.SymbolConfiguration(pointSize: 70, weight: .regular)
        let image = UIImage(systemName: "arrow.up.forward.app", withConfiguration: symbolConfiguration)
        icon.setImage(image, for: .normal)
        icon.tintColor = .gray
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
    }
}

private extension ViewController {
    func setupScene() {
        view.backgroundColor = .systemGray4
        view.addSubview(myButton)
        view.addSubview(myLabel1)
        view.addSubview(myLabel2)
        view.addSubview(myView)
        view.addSubview(myCircle)
        view.addSubview(myIcon)
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            myButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            myButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 350)
        ])
        
        NSLayoutConstraint.activate([
            myLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            myLabel1.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 125),
            myLabel1.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 40)
        ])
        
        NSLayoutConstraint.activate([
            myLabel2.topAnchor.constraint(equalTo: myLabel1.bottomAnchor, constant: 100),
            myLabel2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            myLabel2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25)
        ])
        
        NSLayoutConstraint.activate([
            myView.topAnchor.constraint(equalTo: view.topAnchor, constant: -100),
            myView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600),
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        ])
        
        NSLayoutConstraint.activate([
            myCircle.centerXAnchor.constraint(equalTo: myView.centerXAnchor),
            myCircle.centerYAnchor.constraint(equalTo: myView.centerYAnchor,constant: 120),
            myCircle.widthAnchor.constraint(equalToConstant: 100),
            myCircle.heightAnchor.constraint(equalToConstant: 100),
        ])
        
        NSLayoutConstraint.activate([
            myIcon.centerXAnchor.constraint(equalTo: myView.centerXAnchor),
            myIcon.centerYAnchor.constraint(equalTo: myView.centerYAnchor, constant: 300),
            myIcon.leadingAnchor.constraint(equalTo: myView.leadingAnchor, constant: -300),
            myIcon.trailingAnchor.constraint(equalTo: myView.trailingAnchor, constant: 25),
        ])
    }
    
}

@objc private extension ViewController {
    func  myButtonTapped() {
        print ("Logout")
    }
}
