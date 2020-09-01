//
//  BudgetViewController.swift
//  PlatziFinanzas
//
//  Created by Alejandro Velasco on 31/08/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var animationButtons: [UIButton]!
    @IBOutlet weak var animationLayout: NSLayoutConstraint!
    
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
               navigationController?.navigationBar.standardAppearance = navBarAppearance
               navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
           }
    }
    @IBAction func animateHeader(sender: UIButton){
        animationLayout.constant = sender.frame.origin.x
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded()
        }){(completed) in
            self.animationButtons.forEach{
                $0.setTitleColor(UIColor(named: "TextColor"), for: .normal)
                sender.setTitleColor(UIColor.white, for: .normal)
            }
        }
    }
    
    
}
extension BudgetViewController: UITableViewDelegate{
    
}
extension BudgetViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
    }
    
}
