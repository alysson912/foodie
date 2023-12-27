//
//  LoginScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 26/12/23.
//

protocol LoginScreenProtocol: AnyObject {
    func actionLoginButton()
    func actionRegisterButton()
}


import UIKit

class LoginScreen: UIView {
    
    
    private weak var delegate : LoginScreenProtocol?
    
    func delegate(delegate : LoginScreenProtocol?){
        self.delegate = delegate
    }
    
    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        return view
    }()
    
    lazy var loginLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    lazy var logoAppImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( named: "l2" )
        image.contentMode = .scaleAspectFit
        //image.backgroundColor = .red
        return image
    }()
    
    lazy var emailTextField : UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no
        email.placeholder = "digite seu e-mail"
        email.textColor = .darkGray
        email.backgroundColor = .white
        email.borderStyle = .roundedRect
        email.keyboardType = .emailAddress
        
        return email
    }()
    
    lazy var passwordTextField : UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.autocorrectionType = .no
        password.placeholder = "digite sua senha"
        password.textColor = .darkGray
        password.backgroundColor = .white
        password.borderStyle = .roundedRect
        password.keyboardType = .emailAddress
        // password.isSecureTextEntry = true
        
        return password
    }()
    
    lazy var loginButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("entrar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor( red: 102/255, green: 103/255, blue: 171/255, alpha: 1.0)
        button.addTarget(self , action: #selector(self.tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton : UIButton = {
        let register = UIButton()
        register.translatesAutoresizingMaskIntoConstraints = false
        register.setTitle("cadastre-se", for: .normal)
        register.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        register.setTitleColor(.darkGray, for: .normal)
        register.addTarget(self, action: #selector(tappedRegisterButton) , for: .touchUpInside)
        return register
    }()
    
    @objc private func tappedLoginButton(){
        self.delegate?.actionLoginButton()
    }
    
    @objc private func tappedRegisterButton(){
        self.delegate?.actionRegisterButton()
    }
    
    
    func configTextFieldDelegate( delegate: UITextFieldDelegate){
         self.emailTextField.delegate = delegate
         self.passwordTextField.delegate = delegate
     }
    
    public func validarTextFields(){
        let email: String = self.emailTextField.text ?? ""
        let password: String = self.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty{
            self.configButtonEnable(true)
        }else{
            self.configButtonEnable(false)
        }
    }
    
    private func configButtonEnable(_ enable : Bool ){
           if enable{
               self.loginButton.setTitleColor(.white, for: .normal)
               self.loginButton.isEnabled = true
           }else {
               self.loginButton.setTitleColor(.lightGray, for: .normal)
               self.loginButton.isEnabled = false
           }
       }
    
    private func addViews() {
        addSubview(backGroundView)
        addSubview(loginLabel)
        addSubview(logoAppImageView)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        backGroundView.pin(to: self)
        NSLayoutConstraint.activate([
                    loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 60),
                    loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                    
                    logoAppImageView.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 40),
                    logoAppImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                    logoAppImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                    logoAppImageView.heightAnchor.constraint(equalToConstant: 300),
                    
                    emailTextField.topAnchor.constraint(equalTo: self.logoAppImageView.bottomAnchor, constant: 20),
                    emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                    emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                    emailTextField.heightAnchor.constraint(equalToConstant: 45),
                    
                    passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 15),
                    passwordTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
                    passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
                    passwordTextField.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
                    
                    
                    loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 15 ),
                    loginButton.leadingAnchor.constraint(equalTo: self.passwordTextField.leadingAnchor),
                    loginButton.trailingAnchor.constraint(equalTo: self.passwordTextField.trailingAnchor),
                    loginButton.heightAnchor.constraint(equalTo: self.passwordTextField.heightAnchor),
                    
                    registerButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor,constant: 15),
                    registerButton.leadingAnchor.constraint(equalTo: self.loginButton.leadingAnchor),
                    registerButton.trailingAnchor.constraint(equalTo: self.loginButton.trailingAnchor),
                    registerButton.heightAnchor.constraint(equalTo: self.loginButton.heightAnchor)
                    
                ])
    }
}
