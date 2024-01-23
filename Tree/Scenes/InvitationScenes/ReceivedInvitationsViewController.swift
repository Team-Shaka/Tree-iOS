//
//  ReceivedInvitationsViewController.swift
//  Tree
//
//  Created by BoMin Lee on 1/13/24.
//

import UIKit
import SnapKit

class ReceivedInvitationsViewController: UIViewController {
    private let networkManager = TreeNetworkManager.shared
    
    var invitationData: [InvitationData]? = []
    
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
        label.text = TreeStringCollection.Titles.receivedInvitationsTitle.localized
        label.font = .pretendard(size: 20, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    private var invitationsTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        tableView.rowHeight = 256
        return tableView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        addSubviews()
        makeConstraint()
    }
    
    private func configure() {
        view.backgroundColor = .trBackgroundWhite
        
        self.invitationsTableView.delegate = self
        self.invitationsTableView.dataSource = self
        self.invitationsTableView.register(InvitationsCardTableViewCell.self, forCellReuseIdentifier: InvitationsCardTableViewCell.identifier)
    }
    
    private func addSubviews() {
        navigationView.addSubviews(backButton, titleLabel)
        
        self.view.addSubviews(navigationView, invitationsTableView)
    }
    
    private func makeConstraint() {
        
    }
    
    private func fetchInvitation() {
        
    }
}

extension ReceivedInvitationsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
