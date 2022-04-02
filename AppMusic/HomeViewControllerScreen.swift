//
//  HomeViewControllerScreen.swift
//  AppMusic
//
//  Created by Yago De Moura Silva on 19/02/22.
//

import UIKit

class HomeViewControllerScreen: UIView {
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.separatorColor = .none
        table.tableFooterView = UIView()
        table.showsVerticalScrollIndicator = false
        table.register(CardViewTableViewCell.self, forCellReuseIdentifier: CardViewTableViewCell.identifier)
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.tableView)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func ConfigTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    private func setUpConstraints() {
        self.tableView.pin(to: self)
    }
}
