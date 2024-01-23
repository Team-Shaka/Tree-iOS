//
//  InvitationsCardTableViewCell.swift
//  Tree
//
//  Created by BoMin Lee on 1/13/24.
//

import UIKit

class InvitationsCardTableViewCell: UITableViewCell {
    static let identifier: String = String(describing: InvitationsCardTableViewCell.self)
    
    private var mainContainerView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    private var senderProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 35.0
        return imageView
    }()
    
    private var invitationMessageLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    private var treeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = TreeImageCollection.treeGreen
        return imageView
    }()
    
    private var treeNameLabel: UILabel = {
        let label = UILabel()
//        label.text = 
        return label
    }()
    
    private var member1ProfileImageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    private var member2ProfileImageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    private var member3ProfileImageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    private var memberCountLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var seeTreeButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    private lazy var denyButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        addSubviews()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
    }
    
    func addSubviews() {
        self.contentView.addSubview(mainContainerView)
        
        mainContainerView.addSubviews(senderProfileImageView,
                                      invitationMessageLabel,
                                      treeImageView,
                                      treeNameLabel,
                                      member1ProfileImageView,
                                      member2ProfileImageView,
                                      member3ProfileImageView,
                                      memberCountLabel,
                                      seeTreeButton,
                                      denyButton)
    }
    
    func makeConstraints() {
        mainContainerView.snp.makeConstraints{ make in
            make.top.equalToSuperview()
        }
        
        senderProfileImageView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(24)
            make.width.height.equalTo(70)
        }
        
        invitationMessageLabel.snp.makeConstraints{ make in
            make.centerX.equalTo(senderProfileImageView)
            make.top.equalTo(senderProfileImageView.snp.bottom).offset(16)
        }
        
        
    }
}
