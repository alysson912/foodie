//
//  SheetFormScreen.swift
//  Foodie
//
//  Created by Alysson Menezes on 01/02/24.
//

import UIKit

protocol SheetFormScreenProtocol: AnyObject {
    func actionRegisterButton()
}

class SheetFormScreen: UIView {
    
    private weak var delegate: SheetFormScreenProtocol?
    
    public func delegate(delegate: SheetFormScreenProtocol?){
        self.delegate = delegate
    }
    
    lazy var backGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow//UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cadastro"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
    }()
    
    lazy var itemImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage( systemName: "plus.diamond.fill" )
        image.layer.cornerRadius = 10
        image.backgroundColor = .darkGray
        return image
    }()
    
    lazy var nameItemTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.placeholder = "nome:"
        tf.textColor = .black
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        
        return tf
    }()
    
    lazy var descriptionTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "descriçäo:"
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.textColor = .darkGray
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var priceTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "valor:"
        tf.keyboardType = .numberPad
        tf.autocorrectionType = .no
        tf.borderStyle = .roundedRect
        tf.textColor = .darkGray
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var registerItemButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .blue
        btn.setTitle("add", for: .normal)
        btn.tintColor = .clear
        btn.clipsToBounds = true
        btn.layer.cornerRadius =  8
        btn.contentMode = .scaleAspectFill
        btn.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return btn
    }()
    
    @objc func tappedRegisterButton() {
        self.delegate?.actionRegisterButton()
    }
    
    func configTextFieldDelegate( delegate: UITextFieldDelegate){
        nameItemTextField.delegate = delegate
        descriptionTextField.delegate = delegate
        priceTextField.delegate = delegate
    }
    
    private func addViews() {
        addSubview(backGroundView)
        backGroundView.addSubview(titleLabel)
        backGroundView.addSubview(itemImageView)
        backGroundView.addSubview(nameItemTextField)
        backGroundView.addSubview(descriptionTextField)
        backGroundView.addSubview(priceTextField)
        backGroundView.addSubview(registerItemButton)
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
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            itemImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 45),
            itemImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            itemImageView.heightAnchor.constraint(equalToConstant: 200),
            itemImageView.widthAnchor.constraint(equalToConstant: 200),
            
            nameItemTextField.topAnchor.constraint(equalTo: itemImageView.bottomAnchor, constant: 56),
            nameItemTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            nameItemTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            
            descriptionTextField.topAnchor.constraint(equalTo: nameItemTextField.bottomAnchor, constant: 10),
            descriptionTextField.leadingAnchor.constraint(equalTo: nameItemTextField.leadingAnchor),
            descriptionTextField.trailingAnchor.constraint(equalTo: nameItemTextField.trailingAnchor),
            
            priceTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 10),
            priceTextField.leadingAnchor.constraint(equalTo: descriptionTextField.leadingAnchor),
            priceTextField.trailingAnchor.constraint(equalTo: descriptionTextField.trailingAnchor),
            
            registerItemButton.topAnchor.constraint(equalTo: priceTextField.bottomAnchor, constant: 10),
            registerItemButton.leadingAnchor.constraint(equalTo: priceTextField.leadingAnchor),
            registerItemButton.trailingAnchor.constraint(equalTo: priceTextField.trailingAnchor),
            registerItemButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
