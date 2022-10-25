//
//  ViewController.swift
//  Tabata & HIIT Timer
//
//  Created by Siarhei Ramaniuk on 25.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelVersion: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelVersion.text = getVersion()
        // Do any additional setup after loading the view.
    }

}


func getVersion() -> String {
    let dictionary      = Bundle.main.infoDictionary!
    let appVersion      = dictionary["CFBundleShortVersionString"] as! String
    let buildVersion    = dictionary["CFBundleVersion"] as! String

    return "version \(appVersion).\(buildVersion)"
}
