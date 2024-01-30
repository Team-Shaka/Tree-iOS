//
//  PhoneNumberVerifyViewController.swift
//  Tree
//
//  Created by BoMin Lee on 1/23/24.
//

import UIKit

class PhoneNumberVerifyViewController: UIViewController {
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(TreeImageCollection.Chevron.left, for: .normal)
        return button
    }()
    
    private var enterVerificationLabel: UILabel = {
        let label = UILabel()
        label.text = TreeStringCollection.Onboarding.enterVerification.localized
        label.font = .pretendard(size: 20)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    
    private var userPhoneNumberLabel: UILabel = {
        let label = UILabel()
        label.font = .pretendard(size: 20, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        return label
    }()
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = TreeStringCollection.Onboarding.phoneDescription.localized
        label.font = .pretendard(size: 14)
        label.textColor = .trPrimaryGray
        label.textAlignment = .left
        return label
    }()
    
    private lazy var sendVerificationNumberButton: UIButton = {
        let button = UIButton()
        button.setTitle(TreeStringCollection.Onboarding.verify.localized, for: .normal)
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
        view.backgroundColor = .yellow
    }
    
    private func addSubviews() {
        
    }
    
    private func makeConstraint() {
        
    }
}

