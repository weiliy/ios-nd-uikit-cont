//
//  ViewController.swift
//  DoReMi
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDataSource

class ViewController: UIViewController, UITableViewDataSource {

    // MARK: Properties
    
    // Use this string property as your reuse identifier, 
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "MyCellReuseIdentifier"
    
    // Choose some data to show in your table
    
    let model = [
        ["text": "Do", "detail": "C - The first note of the major scale in solfège"],
        ["text": "Re", "detail": "D - The second note of the major scale in solfège"],
        ["text": "Mi", "detail": "E - The third note of the major scale in solfège"],
        ["text": "Fa", "detail": "F - The fourth note of the major scale in solfège"],
        ["text": "So", "detail": "G - The fifth note of the major scale in solfège"],
        ["text": "La", "detail": "A - The sixth note of the major scale in solfège"],
        ["text": "Ti", "detail": "B - The seventh note of the major scale in solfège"],
        ["text": "Do", "detail": "C - The octave note of the major scale in solfège"]
    ]
    
    // MARK: UITableViewDataSource
    
    // Add the two essential table data source methods here
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: Implement method to return the correct number of rows.
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: Implement method to return cell with the correct reuseidentifier and populated with the correct data.
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        let dictionary = model[indexPath.row]
        cell.textLabel?.text = dictionary["text"]
        cell.detailTextLabel?.text = dictionary["detail"]
        return cell
    }
}
