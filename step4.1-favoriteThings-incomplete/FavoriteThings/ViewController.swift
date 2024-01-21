//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Model
    
    let favoriteThings: [String] = [
        "小松鼠手捧坚果，快乐地在树梢间跳跃玩耍。",
        "小企鹅滑溜溜地在冰面上滑行，欢快地扑通扑通跳跃。",
        "小狗狗躺在草地上，尾巴疯狂摇晃，享受阳光的温暖。",
        "小猫咪爪挠玩具鱼，调皮地蹦蹦跳跳展示独特的猫步。",
        "小猴子摘了一根香蕉，调皮地吊在树上，嘴里吱吱叫个不停。",
        "小乌龟悠闲地在水中游弋，憨态可掬地扭动小尾巴。"
    ]

    // MARK: Table View Data Source Methods
    
    // number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        // TODO: Implement this method to get the correct row count
        let placeholderCount = favoriteThings.count
        return placeholderCount
    }
    
    // cell for row at index path
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
      // TODO: Implement method
      // 1. Dequeue a reusable cell from the table, using the correct “reuse identifier”
      // 2. Find the model object that corresponds to that row
      // 3. Set the images and labels in the cell with the data from the model object
      // 4. return the cell.
        
        let placeholderCell = UITableViewCell()
        return placeholderCell
    }
}
