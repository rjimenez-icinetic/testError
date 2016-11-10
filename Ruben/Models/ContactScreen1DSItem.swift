//
//  ContactScreen1DSItem.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum ContactScreen1DSItemMapping {
	static let address = "address"
	static let phone = "phone"
	static let picture = "picture"
	static let email = "email"
	static let id = "id"
}

public class ContactScreen1DSItem : Item {
	
	var address : String?
	var phone : String?
	var picture : String?
	var email : String?
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
        
 		address = dic[ContactScreen1DSItemMapping.address] as? String
		
		phone = dic[ContactScreen1DSItemMapping.phone] as? String
		
		picture = dic[ContactScreen1DSItemMapping.picture] as? String
		
		email = dic[ContactScreen1DSItemMapping.email] as? String
		
		id = dic[ContactScreen1DSItemMapping.id] as? String
		
	   
    }
}
	

