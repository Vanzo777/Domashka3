//
//  ViewController.swift
//  Domashka3
//
//  Created by Иван Федосеев on 03.04.2024.
//

import UIKit

class ViewController: UIViewController {

    private lazy var logoView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.logo
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var resetLabel: UILabel = {
        let label = UILabel()
        label.text = "Reset your password"
        label.font = .systemFont(ofSize: 30, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var lineView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.line
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = """
        Which method you want to use  to reset your
        password.
        """
        label.font = .systemFont(ofSize: 18, weight: .thin)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var emailButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue with email", for: .normal)
        button.backgroundColor = .systemOrange
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private lazy var emailView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.email
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var mobileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue with mobile", for: .normal)
        button.backgroundColor = .systemOrange
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private lazy var mobileView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.mobile
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    private lazy var messageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue with secret quetion", for: .normal)
        button.backgroundColor = .systemOrange
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private lazy var privacyPolicyLabel: UIButton = {
        let button = UIButton(type: .system)
        let attributedString = NSAttributedString(string: "Policies and Terms of condition", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
        button.setAttributedTitle(attributedString, for: .normal)
        button.setTitleColor(.systemOrange, for: .normal)
        button.layer.cornerRadius = 20
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var helpLabel: UIButton = {
        let button = UIButton(type: .system)
        let attributedString = NSAttributedString(string: "Help?", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
        button.setAttributedTitle(attributedString, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var messageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.message
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayout()
    }
    
    
    private func setupViews(){
        view.addSubviews(
            logoView,
            resetLabel,
            lineView,
            descriptionLabel,
            emailButton,
            emailView,
            mobileButton,
            mobileView,
            messageButton,
            messageView,
            privacyPolicyLabel,
            helpLabel
        )
    }
    
    private func setupLayout(){
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            logoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
           
            
            resetLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 80),
            resetLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            lineView.topAnchor.constraint(equalTo: resetLabel.bottomAnchor,constant: 10),
            lineView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 40),
            descriptionLabel.trailingAnchor.constraint(equalTo: lineView.trailingAnchor),
            
            emailButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 40),
            emailButton.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            emailButton.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            emailButton.heightAnchor.constraint(equalToConstant: 40),
            
            
            emailView.centerYAnchor.constraint(equalTo: emailButton.centerYAnchor),
            emailView.leadingAnchor.constraint(equalTo: emailButton.leadingAnchor, constant: 24),
            
            
            mobileButton.topAnchor.constraint(equalTo: emailButton.bottomAnchor, constant: 20),
            mobileButton.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            mobileButton.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            mobileButton.heightAnchor.constraint(equalToConstant: 40),
            
            
            mobileView.centerYAnchor.constraint(equalTo: mobileButton.centerYAnchor),
            mobileView.leadingAnchor.constraint(equalTo: mobileButton.leadingAnchor, constant: 24),
            
            messageButton.topAnchor.constraint(equalTo: mobileButton.bottomAnchor, constant: 20),
            messageButton.trailingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor),
            messageButton.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            messageButton.heightAnchor.constraint(equalToConstant: 40),
            
            
            messageView.centerYAnchor.constraint(equalTo: messageButton.centerYAnchor),
            messageView.leadingAnchor.constraint(equalTo: messageButton.leadingAnchor, constant: 24),
            
            
            privacyPolicyLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            privacyPolicyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            helpLabel.bottomAnchor.constraint(equalTo: privacyPolicyLabel.bottomAnchor, constant: 30),
            helpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            
            
            
            
        ])
    }


}

#Preview(traits: .portrait, body: {
    UINavigationController(rootViewController: ViewController())
})

