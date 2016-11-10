//
//  TiesFormViewController.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class TiesFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? ProductsDSItem
    
		let nameField = StringField(name: ProductsDSItemMapping.name, label: "Name", required: false, value: item?.name)
        contentView.addSubview(nameField)
		
		let descriptionField = StringField(name: ProductsDSItemMapping.description, label: "Description", required: false, value: item?.description)
        contentView.addSubview(descriptionField)
		
		let categoryField = StringField(name: ProductsDSItemMapping.category, label: "Category", required: false, value: item?.category)
        contentView.addSubview(categoryField)
		
		let priceField = StringField(name: ProductsDSItemMapping.price, label: "Price", required: false, value: item?.price)
        contentView.addSubview(priceField)
		
		let ratingField = StringField(name: ProductsDSItemMapping.rating, label: "Rating", required: false, value: item?.rating)
        contentView.addSubview(ratingField)
		
		let pictureField = ImageField(name: ProductsDSItemMapping.picture, label: "Picture", required: false, viewController: self, value: crudService?.imagePath(item?.picture))
        contentView.addSubview(pictureField)
		
		let thumbnailField = ImageField(name: ProductsDSItemMapping.thumbnail, label: "Thumbnail", required: false, viewController: self, value: crudService?.imagePath(item?.thumbnail))
        contentView.addSubview(thumbnailField)
		
		let dateField = DateTimeField(name: ProductsDSItemMapping.date, label: "Date", required: false, value: item?.date)
        contentView.addSubview(dateField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

