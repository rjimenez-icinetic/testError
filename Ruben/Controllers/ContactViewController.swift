//
//  ContactViewController.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class ContactViewController: DataViewController<ContactScreen1DSItem> {
    
    var didSetupConstraints = false

	var productsDSItem: ProductsDSItem?
	var imageView1: UIImageView!
	var textLabel2Header: UILabel!
	var textLabel2: UILabel!
	var textLabel2Button: UIButton!
	
	var textLabel3Header: UILabel!
	var textLabel3: UILabel!
	var textLabel3Button: UIButton!
	
	var textLabel4Header: UILabel!
	var textLabel4: UILabel!
	var textLabel4Button: UIButton!
	
	var textLabel5: UILabel!
	
	
	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.ContactScreen1DS
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("Contact")
		
	  
		

		imageView1 = createImageView()
		addSubview(imageView1)	
		
		textLabel2Header = createHeaderLabel("ADDRESS")
		addSubview(textLabel2Header)	
		
		textLabel2 = createLabel()
		addSubview(textLabel2)	
		
		textLabel2Button = createButton(Images.location)
        addSubview(textLabel2Button)
		 
		textLabel3Header = createHeaderLabel("PHONE")
		addSubview(textLabel3Header)	
		
		textLabel3 = createLabel()
		addSubview(textLabel3)	
		
		textLabel3Button = createButton(Images.phone)
        addSubview(textLabel3Button)
		 
		textLabel4Header = createHeaderLabel("EMAIL")
		addSubview(textLabel4Header)	
		
		textLabel4 = createLabel()
		addSubview(textLabel4)	
		
		textLabel4Button = createButton(Images.email)
        addSubview(textLabel4Button)
		 
		textLabel5 = createLabel()
		addSubview(textLabel5)	
		
	

        for behavior in self.behaviors {
            behavior.load()
        }
			
		updateViewConstraints()
		
		loadData()
	}
    
    override func updateViewConstraints() {
        
        if !didSetupConstraints {
            
            didSetupConstraints = true
            setupConstraints()
        }
        super.updateViewConstraints()
    }

	func setupConstraints() {
        
        let views:[String: UIView] = [
            "scrollView": scrollView,
            "contentView": contentView,
			"imageView1": imageView1,
			"textLabel2Header": textLabel2Header, 
			"textLabel2": textLabel2,
			"textLabel2Button": textLabel2Button,
			"textLabel3Header": textLabel3Header, 
			"textLabel3": textLabel3,
			"textLabel3Button": textLabel3Button,
			"textLabel4Header": textLabel4Header, 
			"textLabel4": textLabel4,
			"textLabel4Button": textLabel4Button,
			"textLabel5": textLabel5,
        ]
        
        let metrics:[String: CGFloat] = [
            "zero": Dimens.Margins.none,
            "margin": Dimens.Margins.large,
            "buttonSize": Dimens.Sizes.small
        ]
		
		contentView.removeConstraints(contentConstraints)
        scrollView.removeConstraints(scrollConstraints)
        view.removeConstraints(mainConstraints)
		
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
		contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[contentView(==scrollView)]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[contentView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		imageView1.translatesAutoresizingMaskIntoConstraints = false
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[imageView1]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        contentConstraints.append(NSLayoutConstraint(item: imageView1,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: contentView,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0))
		textLabel2Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2]-margin-[textLabel2Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel2Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel2Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel2Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel2,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel3Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel3.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3]-margin-[textLabel3Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel3Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel3Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel3Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel3,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel4Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel4.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4]-margin-[textLabel4Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel4Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel4Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel4Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel4,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel5.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel5]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[imageView1]-margin-[textLabel2Header]-margin-[textLabel2]-margin-[textLabel3Header]-margin-[textLabel3]-margin-[textLabel4Header]-margin-[textLabel4]-margin-[textLabel5]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension ContactViewController: DataResponse {

    func success() {
        
        navigationItem.title = ""
        
		imageView1.loadImage(datasource.imagePath(item?.picture), containerView: view)
		
		textLabel2.text = item?.address
		
		setAction(MapAction(uri: item?.address), view: textLabel2)
		setAction(MapAction(uri: item?.address), view: textLabel2Button)
		 
		textLabel3.text = item?.phone
		
		setAction(PhoneAction(uri: item?.phone), view: textLabel3)
		setAction(PhoneAction(uri: item?.phone), view: textLabel3Button)
		 
		textLabel4.text = item?.email
		
		setAction(MailAction(recipient: item?.email), view: textLabel4)
		setAction(MailAction(recipient: item?.email), view: textLabel4Button)
		 
		textLabel5.text = productsDSItem?.rating
		
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


