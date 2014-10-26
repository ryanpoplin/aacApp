//
//  ViewController.swift
//  aacApp
//
//  Created by Byrdann Fox on 10/25/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var saveShortcutButton:UIButton!
    
    func saveShortcutButtonIsPressed(sender:UIButton) {
        
        // if...
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Shortcut was saved!"
        alert.addButtonWithTitle("Done")
        alert.show()
        
    }
    
    override func viewDidAppear(animated:Bool) {
        super.viewDidAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        saveShortcutButton = UIButton.buttonWithType(.System) as? UIButton
        saveShortcutButton.frame = CGRect(x: 110, y: 70, width: 100, height: 44)
        saveShortcutButton.setTitle("Save", forState: .Normal)
        saveShortcutButton.setTitle("Saving", forState: .Highlighted)
        saveShortcutButton.addTarget(self, action: "saveShortcutButtonIsPressed:", forControlEvents: .TouchDown)
        view.addSubview(saveShortcutButton)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}