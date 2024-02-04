//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Weili Yi on 2024/2/3.
//  Copyright © 2024 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Porperties

    let cellReusableCellId = "HistoryCell"
    var history = [RPSMatch]()
    
    // MARK: Inital Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did mount")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(history)
    }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: Table View Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = history[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReusableCellId, for: indexPath)
        cell.textLabel?.text = row.winner.description
        return cell
    }
}
