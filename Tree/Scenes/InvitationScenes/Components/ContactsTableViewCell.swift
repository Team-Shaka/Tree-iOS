//
//  ContactsTableViewCell.swift
//  Tree
//
//  Created by BoMin Lee on 1/23/24.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    private var mainContainerView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    private var contactNameLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private var contactPhoneNumberLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var sendInvitationButton: UIButton = {
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
    }
    
    func makeConstraints() {
        mainContainerView.snp.makeConstraints { make in
            make.top.equalToSuperview()
        }
    }
}
