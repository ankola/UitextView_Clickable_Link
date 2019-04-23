//
//  ViewController.swift
//  Clickable_Uilabel_Swift4
//
//  Created by Savan on 23/04/19.
//  Copyright © 2019 Savan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    let textview = UITextView()
    let str = "String with a link"
    let u = URL.init(string: "https://www.hackingwithswift.com")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textview.frame = CGRect.init(x: 0, y: 50, width: 300, height: 500)
        textview.delegate = self
        textview.text = str
        
        let attributedString = NSMutableAttributedString(string: "Want to learn iOS? You should visit the best source of free iOS tutorials! Want to learn iOS? You should visit the best source of free iOS tutorials! Want to learn iOS? You should visit the best source of free iOS tutorials!")
        attributedString.addAttribute(.link, value: "https://www.hackingwithswift.com", range: NSRange(location: 100, length: 25))
        
        textview.attributedText = attributedString
        textview.isEditable = false
        textview.isUserInteractionEnabled = true
        
        self.view.addSubview(textview)
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        print(URL, characterRange, interaction)
        if URL == u {
            print(true)
        } else {
            print(false)
        }
        return false
    }
}

