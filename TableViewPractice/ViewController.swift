//
//  ViewController.swift
//  TableViewPractice
//
//  Created by shinichiro kudo on 2021/02/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    
    @IBAction func didTapButtonOne() {
        
        let vc = MyTableViewController()
        vc.models = [

        ]
        
        navigationController?.pushViewController(vc, animated: true)
        
    }

    @IBAction func didTapButtonTwo() {
        
        let vc = MyTableViewController()
        vc.models = [
            ("first", {
                print("first")
            }),
            ("second", {
                print("second")
            }),
            ("thrid", {
                print("thrid")
            })
        ]
        
        navigationController?.pushViewController(vc, animated: true)
        
    }

    
}







