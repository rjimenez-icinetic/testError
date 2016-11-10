//
//  CloudantDSSchemaItem.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation
import CDTDatastore

enum CloudantDSSchemaItemMapping {
	static let last_name = "last_name"
	static let gender = "gender"
	static let first_name = "first_name"
	static let email = "email"
	static let birth_date = "birth_date"
	static let image = "image"
}

public class CloudantDSSchemaItem : Item, CloudantItem {
	
	var last_name : String?{
		didSet {
			if let revision = revision {
				revision.body[CloudantDSSchemaItemMapping.last_name] = last_name
			}
		}
	}
	
	var gender : String?{
		didSet {
			if let revision = revision {
				revision.body[CloudantDSSchemaItemMapping.gender] = gender
			}
		}
	}
	
	var first_name : String?{
		didSet {
			if let revision = revision {
				revision.body[CloudantDSSchemaItemMapping.first_name] = first_name
			}
		}
	}
	
	var email : String?{
		didSet {
			if let revision = revision {
				revision.body[CloudantDSSchemaItemMapping.email] = email
			}
		}
	}
	
	var birth_date : String?{
		didSet {
			if let revision = revision {
				revision.body[CloudantDSSchemaItemMapping.birth_date] = birth_date
			}
		}
	}
	
	var image : String?{
		didSet {
			if let revision = revision {
				revision.body[CloudantDSSchemaItemMapping.image] = image
			}
		}
	}
	
	
	public var revision: CDTDocumentRevision? {
    
        didSet {
            if let revision = revision {
                retrieve(revision.body)
            }
        }
    }
	
	public var identifier: AnyObject? {
        if let revision = revision {
            return revision.docId
        }
        return nil
    }
	
	required public init?(dictionary: NSDictionary?) {
        revision = CDTDocumentRevision()
        revision?.body = NSMutableDictionary()
        retrieve(dictionary)
    }
    
    required public init?(revision: CDTDocumentRevision) {
        self.revision = revision
        retrieve(revision.body)
    }
    
    public func retrieve(dictionary: NSDictionary?) {
        guard let dic = dictionary else {
            return
        }
 		last_name = dic[CloudantDSSchemaItemMapping.last_name] as? String
		
		gender = dic[CloudantDSSchemaItemMapping.gender] as? String
		
		first_name = dic[CloudantDSSchemaItemMapping.first_name] as? String
		
		email = dic[CloudantDSSchemaItemMapping.email] as? String
		
		birth_date = dic[CloudantDSSchemaItemMapping.birth_date] as? String
		
		image = dic[CloudantDSSchemaItemMapping.image] as? String
		
    }
}
	

