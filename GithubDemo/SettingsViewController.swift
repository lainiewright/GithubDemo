//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Brian Lee on 2/18/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var minStars: Int?

    @IBOutlet weak var starSlider: UISlider!
    @IBOutlet weak var starCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starSlider.value = Float(minStars!)
        starCountLabel.text = String(format: "%.0f", round(starSlider.value))
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSliderChange(sender: AnyObject) {
        starCountLabel.text = String(format: "%.0f", round(starSlider.value))
    }
    
    @IBAction func onSave(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) { () -> Void in
        }
    }
    
    @IBAction func onCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) { () -> Void in
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation


}
