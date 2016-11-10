//
//  ProductsDSItem.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum ProductsDSItemMapping {
	static let name = "name"
	static let description = "description"
	static let category = "category"
	static let price = "price"
	static let rating = "rating"
	static let picture = "picture"
	static let thumbnail = "thumbnail"
	static let date = "date"
	static let id = "id"
}

public class ProductsDSItem : Item {
	
	var name : String?
	var description : String?
	var category : String?
	var price : String?
	var rating : String?
	var picture : String?
	var thumbnail : String?
	var date : NSDate?
	var id : String?
	
	// MAR: - <Item>

	public var identifier: AnyObject? {
		guard let identifier = id else {
			return ""
		}
		return identifier
	}
	
	required public init?(dictionary: NSDictionary?) {
    
        retrieve(dictionary)
    }
	
	public func retrieve(dictionary: NSDictionary?) {
     
        guard let dic = dictionary else {
            return
        }
        
 		name = dic[ProductsDSItemMapping.name] as? String
		
		description = dic[ProductsDSItemMapping.description] as? String
		
		category = dic[ProductsDSItemMapping.category] as? String
		
		price = dic[ProductsDSItemMapping.price] as? String
		
		rating = dic[ProductsDSItemMapping.rating] as? String
		
		picture = dic[ProductsDSItemMapping.picture] as? String
		
		thumbnail = dic[ProductsDSItemMapping.thumbnail] as? String
		
		date = NSDate.date(dic[ProductsDSItemMapping.date] as? String)
		
		id = dic[ProductsDSItemMapping.id] as? String
		
	   
    }
}
	

