//
//  DatasourceConfig.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation
 
 enum DatasourceConfig {

	 
	
	enum Cloud {
		
		static let baseUrl = "https://baked-devel-ibm.herokuapp.com"

		enum ProductsDS{
			
			static let resource = "/app/57e9362395080f0300d8a939/r/productsDS"
			static let apiKey = "cQqRsqIA"
		}

		enum ContactScreen1DS{
			
			static let resource = "/app/57e9362395080f0300d8a939/r/contactScreen1DS"
			static let apiKey = "cQqRsqIA"
		}
	}

	
	enum External {
		
		static let baseUrl = "https://appbuilder-devel.buildup.io/api/app/data"
        static let appIdentifier = "92f7c6c5-06f3-4207-b608-a04e5046a0ef"
        static let apiKey = "LF3X1m0QABaZY2MjJS5PtZkZsMvdFhhfKTRGgvb1FR"

		enum ExcelDS{
			
			static let identifier = "19a1057c-1da4-4174-9963-d6db91455739"
		}

		enum SheetDS{
			
			static let identifier = "8df9c09b-3540-4f9c-9794-ce0c007391d1"
		}
	}

	
	enum Cloudant {

		enum CloudantDS{
			
			static let url = "https://icinetic:icinetic@icinetic.cloudant.com/test1"
			static let datastoreName = "test1"
			static let indexes:[String] = [] // TODO: not implemented yet
		}
	}
}

