//
//  TiesFilterViewController.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class TiesFilterViewController: FilterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterFields = [
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ProductsDSItemMapping.price,
                label: "Price",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ProductsDSItemMapping.rating,
                label: "Rating",
                viewController: self),
            
        ]

        loadFields()
    }
}

