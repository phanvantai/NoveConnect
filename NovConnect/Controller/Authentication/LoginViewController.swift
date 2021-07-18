//
//  LoginViewController.swift
//  NovConnect
//
//  Created by Tai Phan Van on 17/07/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Views
    private let instaImageView = CustomAuthImageView()
    private let emailTextField = CustomAuthTextField(placeholder: "Email")
    private let passwordTextField = CustomAuthTextField(placeholder: "Password")
    private let loginButton = CustomAuthActionButton(title: "Log In")
    private let forgotPassButton = CustomAuthTextButton(title: "Forgotten password?")
    private let dontHaveAccountLabel = CustomAuthLabel(label: "Don't have an account?")
    private let signUpButton = CustomAuthTextButton(title: "Sign Up")
    private let bottomLine = CustomAuthLineView()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        addActions()
    }
    
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(instaImageView)
        instaImageView.centerX(inView: self.view)
        instaImageView.setDimensions(height: 80, width: self.view.frame.width * 2 / 3)
        instaImageView.anchor(top: self.view.safeAreaLayoutGuide.topAnchor, paddingTop: 160)
        
        view.addSubview(emailTextField)
        emailTextField.keyboardType = .emailAddress
        emailTextField.anchor(top: instaImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 32, paddingLeft: 16, paddingRight: 16)
        
        view.addSubview(passwordTextField)
        passwordTextField.isSecureTextEntry = true
        passwordTextField.anchor(top: emailTextField.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 12, paddingLeft: 16, paddingRight: 16)
        
        view.addSubview(forgotPassButton)
        forgotPassButton.anchor(top: passwordTextField.bottomAnchor, right: view.rightAnchor, paddingTop: 12, paddingRight: 16)
        
        view.addSubview(loginButton)
        loginButton.anchor(top: forgotPassButton.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 16, paddingRight: 16)
        
        let stackView = UIStackView(arrangedSubviews: [dontHaveAccountLabel, signUpButton])
        stackView.axis = .horizontal
        stackView.spacing = 8
        
        view.addSubview(stackView)
        stackView.centerX(inView: self.view)
        stackView.anchor(bottom: self.view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 0)
        
        view.addSubview(bottomLine)
        bottomLine.anchor(bottom: stackView.topAnchor, paddingBottom: 24)
        bottomLine.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1).isActive = true
    }
    
    func addActions() {
        loginButton.addTarget(self, action: #selector(logInOnClick), for: .touchUpInside)
        forgotPassButton.addTarget(self, action: #selector(forgotPasswordOnClick), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(signUpOnClick), for: .touchUpInside)
    }
    
    // MARK: - Actions
    @objc func logInOnClick() {
        print(#function)
    }
    
    @objc func forgotPasswordOnClick() {
        print(#function)
    }
    
    @objc func signUpOnClick() {
        print(#function)
        navigationController?.pushViewController(RegistrationViewController(), animated: true)
    }
}
