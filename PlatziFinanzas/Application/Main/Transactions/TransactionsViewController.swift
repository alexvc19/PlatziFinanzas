//
//  TransactionsViewController.swift
//  PlatziFinanzas
//
//  Created by Alejandro Velasco on 29/08/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit

class TransactionsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate(set) lazy var emptyStateView: UIView = {
        guard let view = Bundle.main.loadNibNamed("EmptyState", owner: nil, options: [:])?.first  as? UIView else{
            return UIView()
        }
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let cell = UINib (nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
    }
    override func loadView() {
        super.loadView()
    
        if #available(iOS 13.0, *) {
             let navBarAppearance = UINavigationBarAppearance()
             navBarAppearance.configureWithOpaqueBackground()
             navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
             navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
             navBarAppearance.backgroundColor = UIColor.init(named: "GreenColor")
             navBarAppearance.backgroundImage = UIImage()
             navBarAppearance.shadowImage = UIImage()
             navBarAppearance.shadowColor = .clear
             self.navigationController?.navigationBar.standardAppearance = navBarAppearance
             self.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        
         }
    }
  
}
extension TransactionsViewController: UITableViewDelegate{
    
}
extension TransactionsViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 0
        tableView.backgroundView = count == 0 ? emptyStateView: nil
        tableView.separatorStyle = count == 0 ? .none : .singleLine
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
    }
    
}


