//
//  ViewController.swift
//  FloatingView
//
//  Created by Hsiao, Wayne on 2019/11/6.
//  Copyright © 2019 Hsiao, Wayne. All rights reserved.
//

import UIKit
import WHFloatingView

class ViewController: UIViewController {
    var show = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FloatingViewIntegration.shared.entryViewController = {
           return SettingTableViewController.instanceFromNib()!
        }
    }

    @IBAction func buttonTapped(_ sender: Any) {
        show = !show
        if show {
            FloatingViewIntegration.shared.showFloatingView()
        } else {
            FloatingViewIntegration.shared.hideFloatingView()
        }        
    }
    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert", message: "Wouldn't cover floating view.", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
}
