//
//  WatchListViewController.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/28/22.
//

//Watchlist из предыдущего таба

import UIKit

class WatchListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
//    override func viewDidLayoutSubviews() {
//        Constants.gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        setOptions()
        Constants.setGradient(view)
        setConstraints()
        
        tableView.isHidden = true
    }
    
    func setOptions() {
        self.navigationItem.title = "Избранное"
    }
    
    func setConstraints() {
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}

extension WatchListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .white
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    
}
