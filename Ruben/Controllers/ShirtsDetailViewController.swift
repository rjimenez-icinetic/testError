//
//  ShirtsDetailViewController.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class ShirtsDetailViewController: DataViewController<ProductsDSItem> {
    
    var didSetupConstraints = false
	
	var imageView1: UIImageView!
	var textLabel2: UILabel!
	var textLabel3: UILabel!
	

	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.ProductsDS
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("{ProductsDS.Name}")
		
		
		imageView1 = createImageView()
		addSubview(imageView1)	
		
		textLabel2 = createLabel(Style.sharedInstance.font(Fonts.Sizes.large, bold: false, italic: false), textColor: UIColor(rgb: 0xffc107))
		addSubview(textLabel2)	
		
		textLabel3 = createLabel()
		addSubview(textLabel3)	
		
		behaviors.append(ShareBehavior(dataViewController: self))

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
			"textLabel2": textLabel2,
			"textLabel3": textLabel3,
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
		textLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel3.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[imageView1]-margin-[textLabel2]-margin-[textLabel3]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension ShirtsDetailViewController: DataResponse {

    func success() {
        
        navigationItem.title = item?.name
        
 		imageView1.loadImage(datasource.imagePath(item?.picture), containerView: view)
		
		textLabel2.text = String(format: "$%@ %@", item?.price ?? "", item?.rating ?? "")
		
		textLabel3.text = item?.description
		
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


