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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

}
extension TransactionsViewController: UITableViewDelegate{
    
}
extension TransactionsViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
    }
    
}
