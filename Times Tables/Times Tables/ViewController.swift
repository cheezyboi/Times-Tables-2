//
//  ViewController.swift
//  Times Tables
//
//  Created by Chibuzor Ejimofor on 11/9/17.
//  Copyright © 2017 Chibuzor Ejimofor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var slider: UISlider!
    @IBAction func slider(_ sender: AnyObject) {
        table.reloadData()
        sliderNumber.text = String(Int(slider.value))
    }
    @IBOutlet weak var sliderNumber: UILabel!
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 51
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(indexPath.row * Int(slider.value))
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

