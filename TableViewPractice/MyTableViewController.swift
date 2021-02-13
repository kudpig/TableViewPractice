//
//  TableViewController.swift
//  TableViewPractice
//
//  Created by shinichiro kudo on 2021/02/14.
//

import UIKit

class MyTableViewController: UITableViewController {

    public var models: [ (String, (() -> Void))] = []
    // ↑モデルの中身を文字とクロージャによる処理(引数なしからvoid型)としている。
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].0
        return cell
        // .rowで行を取り出せる
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        models[indexPath.row].1()
    }
    
    
}
