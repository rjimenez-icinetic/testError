//
//  JacketsFormViewController.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class JacketsFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? CloudantDSSchemaItem
    
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

