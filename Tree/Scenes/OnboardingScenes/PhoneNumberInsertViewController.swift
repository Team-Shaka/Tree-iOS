//
//  PhoneNumberInsertViewController.swift
//  Tree
//
//  Created by BoMin Lee on 1/23/24.
//

import UIKit

class PhoneNumberInsertViewController: UIViewController {
    private var greetingLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private var phoneNumberInsertView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    private var countryNumberLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var phoneNumberInsertTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.placeholder = TreeStringCollection.Onboarding.phonePlaceholder.localized
        
        textField.keyboardType = .phonePad
        textField.clearButtonMode = .always
        textField.clearsOnBeginEditing = false
        
        textField.returnKeyType = .done
        return textField
    }()
    
    private var exampleLabel: UILabel = {
        let label = UILabel()
        label.text = TreeStringCollection.Onboarding.phoneDescription.localized
        label.font = .pretendard(size: 14, weight: .regular)
        label.textColor = .trPrimaryGray
        return label
    }()
    
    private lazy var sendVerificationNumberButton: UIButton = {
        let button = UIButton()
        button.setTitle(TreeStringCollection.Onboarding.sendVerification.localized, for: .normal)
        button.setTitleColor(.trBackgroundWhite, for: .normal)
        button.backgroundColor = .trPrimaryGreen
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        addSubviews()
        makeConstraint()
    }
    
    private func configure() {
        
    }
    
    private func addSubviews() {
        
    }
    
    private func makeConstraint() {
        
    }
}
