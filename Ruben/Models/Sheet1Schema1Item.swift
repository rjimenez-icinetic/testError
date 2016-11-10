//
//  Sheet1Schema1Item.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum Sheet1Schema1ItemMapping {
	static let id = "id"
	static let descripcion = "descripcion"
	static let fecha = "fecha"
	static let lugar = "lugar"
	static let nombreCompleto = "nombreCompleto"
	static let oportunidad = "oportunidad"
	static let users = "users"
}

public class Sheet1Schema1Item : Item {
	
	var id : String?
	var descripcion : String?
	var fecha : String?
	var lugar : String?
	var nombreCompleto : String?
	var oportunidad : String?
	var users : String?
	
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
        
 		id = dic[Sheet1Schema1ItemMapping.id] as? String
		
		descripcion = dic[Sheet1Schema1ItemMapping.descripcion] as? String
		
		fecha = dic[Sheet1Schema1ItemMapping.fecha] as? String
		
		lugar = dic[Sheet1Schema1ItemMapping.lugar] as? String
		
		nombreCompleto = dic[Sheet1Schema1ItemMapping.nombreCompleto] as? String
		
		oportunidad = dic[Sheet1Schema1ItemMapping.oportunidad] as? String
		
		users = dic[Sheet1Schema1ItemMapping.users] as? String
		
	   
    }
}
	

