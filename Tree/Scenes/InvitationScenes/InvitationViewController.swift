//
//  InvitationViewController.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import UIKit
import SnapKit

class InvitationViewController: UIViewController {
    private var navigationView: UIView = {
        let view = UIView()
        view.backgroundColor = .trBackgroundWhite
        return view
    }()
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(TreeImageCollection.Chevron.left, for: .normal)
        button.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .left
        //        button.addTarget(self, action: #selector(), for: .touchUpInside)
        return button
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.text = TreeStringCollection.Titles.invitationsTitle.localized
        label.font = .pretendard(size: 20, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    private var invitationNoticeView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    private var invitedLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private var seeInvitationsImageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    private var seeInvitationsLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private var invitationCountView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    private var leftInvitationsLabel: UILabel = {
        let label = UILabel()
        label.text = "You have 0 Invitations"
        label.font = .pretendard(size: 20, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    private var contactsSearchView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    private var contactsTableview: UITableView = {
        let tableView = UITableView()
        
        return tableView
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
        view.addSubviews(navigationView, invitationNoticeView, invitationCountView, contactsSearchView, contactsTableview)
        
        invitationNoticeView.addSubviews(invitedLabel, seeInvitationsImageView, seeInvitationsLabel)
        invitationCountView.addSubviews(leftInvitationsLabel)
    }
    
    private func makeConstraint() {
        
    }
}
