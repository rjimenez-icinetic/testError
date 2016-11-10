//
//  ExcelDSSchemaItem.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum ExcelDSSchemaItemMapping {
	static let id = "id"
}

public class ExcelDSSchemaItem : Item {
	
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
        
 		id = dic[ExcelDSSchemaItemMapping.id] as? String
		
	   
    }
}
	

