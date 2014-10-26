//
//  ViewController.swift
//  aacApp
//
//  Created by Byrdann Fox on 10/25/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    // prop...
    var textView:UITextView?
    
    // meth...
    override func viewDidAppear(animated:Bool) {
        super.viewDidAppear(animated)
        textView?.becomeFirstResponder()
    }
    
    // prop...
    var saveShortcutButton:UIButton!
    
    // meth...
    func saveShortcutButtonIsPressed(sender:UIButton) {
        
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Shortcut was saved!"
        alert.addButtonWithTitle("Done")
        alert.show()
        
    }
    
    // prop...
    var clearTextButton:UIButton!
    
    // meth...
    func clearTextButtonIsPressed(sender:UIButton) {
        
        textView?.text = nil
        
    }
    
    var shortcutsButton:UIButton!
    
    func segueToShortcuts(sender:UIButton) {
        
        // ...
        
        // performSegueWithIdentifier("yourSegueIdentifier", sender:nil)
        
    }
    
    // meth...
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make this a button generator function...
        
        /*func uiButtonGen() {
            
        }*/
        
        saveShortcutButton = UIButton.buttonWithType(.System) as? UIButton
        saveShortcutButton.frame = CGRect(x: 110, y: 240, width: 100, height: 44)
        saveShortcutButton.setTitle("Save", forState: .Normal)
        saveShortcutButton.addTarget(self, action: "saveShortcutButtonIsPressed:", forControlEvents: .TouchDown)
        saveShortcutButton.backgroundColor = UIColor.grayColor()
        view.addSubview(saveShortcutButton)
        
        clearTextButton = UIButton.buttonWithType(.System) as? UIButton
        clearTextButton.frame = CGRect(x: 5, y: 240, width: 100, height: 44)
        clearTextButton.setTitle("Clear", forState: .Normal)
        clearTextButton.addTarget(self, action: "clearTextButtonIsPressed:", forControlEvents: .TouchDown)
        clearTextButton.backgroundColor = UIColor.grayColor()
        view.addSubview(clearTextButton)
        
        shortcutsButton = UIButton.buttonWithType(.System) as? UIButton
        shortcutsButton.frame = CGRect(x: 215, y: 240, width: 100, height: 44)
        shortcutsButton.setTitle("Shortcuts", forState: .Normal)
        shortcutsButton.addTarget(self, action: "segueToShortcuts:", forControlEvents: .TouchDown)
        shortcutsButton.backgroundColor = UIColor.grayColor()
        view.addSubview(shortcutsButton)
        
        textView?.sizeToFit()
        textView?.layoutIfNeeded()
        textView = UITextView(frame: CGRect(x: 0, y: 0, width: 320, height: 220))
        textView?.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        textView?.font = UIFont.systemFontOfSize(16)
        textView?.backgroundColor = UIColor.grayColor()
        view.addSubview(textView!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    // meth...
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}