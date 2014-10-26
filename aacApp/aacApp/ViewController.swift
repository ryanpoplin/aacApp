//
//  ViewController.swift
//  aacApp
//
//  Created by Byrdann Fox on 10/25/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // button...
    
    var saveShortcutButton:UIButton!
    
    func saveShortcutButtonIsPressed(sender:UIButton) {
        
        // if shit was saved via core data...
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Shortcut was saved!"
        alert.addButtonWithTitle("Done")
        alert.show()
        
    }
    
    // textview...
    
    var textView:UITextView?
    
    override func viewDidAppear(animated:Bool) {
        super.viewDidAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // button...
        saveShortcutButton = UIButton.buttonWithType(.System) as? UIButton
        saveShortcutButton.frame = CGRect(x: 110, y: 240, width: 100, height: 44)
        saveShortcutButton.setTitle("Save", forState: .Normal)
        saveShortcutButton.addTarget(self, action: "saveShortcutButtonIsPressed:", forControlEvents: .TouchDown)
        view.addSubview(saveShortcutButton)
        
        // textview...
        // !...
        // ?...
        textView?.sizeToFit()
        textView?.layoutIfNeeded()
        textView = UITextView(frame: CGRect(x: 0, y: 0, width: 320, height: 220))
        textView?.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        textView?.font = UIFont.systemFontOfSize(16)
        textView?.backgroundColor = UIColor.grayColor()
        view.addSubview(textView!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}