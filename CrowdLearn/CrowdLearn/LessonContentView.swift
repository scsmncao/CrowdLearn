//
//  LessonContentView.swift
//  CrowdLearn
//
//  Created by Simon Cao on 4/7/15.
//  Copyright (c) 2015 CrowdLearn. All rights reserved.
//

import UIKit

class LessonContentView: UIViewController, UITextViewDelegate {
    
    @IBOutlet var textBox: UITextView!
    @IBOutlet weak var practice: UIBarButtonItem!
    
    @IBOutlet weak var video: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textBox.delegate = self
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
    
    func textView(textView: UITextView!, shouldChangeTextInRange: NSRange, replacementText: NSString!) -> Bool {
        if(replacementText == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
}
