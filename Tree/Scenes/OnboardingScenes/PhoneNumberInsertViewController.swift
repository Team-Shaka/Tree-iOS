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
        label.text = "\(TreeStringCollection.Onboarding.greetings.localized)\n\(TreeStringCollection.Onboarding.phoneEnter.localized)"
        label.font = .pretendard(size: 20)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    
    private var phoneNumberInsertView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.trPrimaryGray.cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    private var countryNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "+82"
        label.font = .pretendard(size: 16)
        label.textColor = .black
        label.textAlignment = .left
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
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = TreeStringCollection.Onboarding.phoneDescription.localized
        label.font = .pretendard(size: 14, weight: .regular)
        label.textColor = .trPrimaryGray
        label.textAlignment = .left
        return label
    }()
    
    private lazy var sendVerificationNumberButton: UIButton = {
        let button = UIButton()
        button.setTitle(TreeStringCollection.Onboarding.sendVerification.localized, for: .normal)
        button.setTitleColor(.trBackgroundWhite, for: .normal)
        button.titleLabel?.font = .pretendard(size: 20)
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
        view.backgroundColor = .trBackgroundWhite
    }
    
    private func addSubviews() {
        view.addSubviews(greetingLabel,
                         phoneNumberInsertView,
                         descriptionLabel,
                         sendVerificationNumberButton)
    }
    
    private func makeConstraint() {
        greetingLabel.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(65)
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(24)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(24)
        }
        
//        greetingLabel.backgroundColor = .systemPink
        
        phoneNumberInsertView.snp.makeConstraints{ make in
            make.top.equalTo(greetingLabel.snp.bottom).offset(18)
            make.leading.trailing.equalTo(greetingLabel)
            make.height.equalTo(36)
        }
        
        descriptionLabel.snp.makeConstraints{ make in
            make.top.equalTo(phoneNumberInsertView.snp.bottom).offset(32)
            make.leading.trailing.equalTo(greetingLabel)
        }
        
        sendVerificationNumberButton.snp.makeConstraints{ make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(32)
            make.leading.trailing.equalTo(greetingLabel)
        }
    }
}
