//
//  ViewController.swift
//  LanguageTest
//
//  Created by Bill Martensson on 2020-10-20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var theLabel: UILabel!
    
    @IBOutlet weak var theTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(Locale.preferredLanguages)
        for lang in Locale.preferredLanguages
        {
            let firstTwo = lang.index(lang.startIndex, offsetBy: 2)
            
            let langCode = String(lang[lang.startIndex ..< firstTwo])
            print(langCode)
        }
        
        
        
        
    }

    
    @IBAction func letsClick(_ sender: Any) {
        theLabel.text = NSLocalizedString("Result", comment: "The result text") + ": " + theTextfield.text!
    }
    
}

