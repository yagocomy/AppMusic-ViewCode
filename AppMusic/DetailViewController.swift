//
//  DetailViewController.swift
//  AppMusic
//
//  Created by Yago De Moura Silva on 16/04/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var screen: DetailViewControllerScreen?
    var cardModel: CardViewModel?

    
    override func loadView() {
        self.screen = DetailViewControllerScreen(dataView: self.cardModel)
        self.screen?.configAllDelegates(tableViewDelegate: self, tableViewDataSource: self, scrollViewDelegate: self, detailViewScreenDelegate: self)
        self.view = self.screen
    }
    
    override var prefersStatusBarHidden: Bool{
        return true 
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension DetailViewController: DetailViewControllerScreenDelegate {
    func tappedCloseButton() {
        self.dismiss(animated: true, completion: nil)
    }
}

extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
