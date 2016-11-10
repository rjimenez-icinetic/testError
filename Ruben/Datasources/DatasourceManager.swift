//
//  DatasourceManager.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

class DatasourceManager {

	static let sharedInstance = DatasourceManager()
	
	
	lazy var ProductsDS: CloudDatasource<ProductsDSItem> = {
    
        return CloudDatasource<ProductsDSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.ProductsDS.resource,
                                             apikey: DatasourceConfig.Cloud.ProductsDS.apiKey,
                                             searchableFields: [ProductsDSItemMapping.name, ProductsDSItemMapping.description, ProductsDSItemMapping.category, ProductsDSItemMapping.price, ProductsDSItemMapping.rating]) 
    }()
	
	lazy var ContactScreen1DS: CloudDatasource<ContactScreen1DSItem> = {
    
        return CloudDatasource<ContactScreen1DSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.ContactScreen1DS.resource,
                                             apikey: DatasourceConfig.Cloud.ContactScreen1DS.apiKey,
                                             searchableFields: [ContactScreen1DSItemMapping.address, ContactScreen1DSItemMapping.phone, ContactScreen1DSItemMapping.email]) 
    }()
	
	lazy var ExcelDS: ExternalDatasource<ExcelDSSchemaItem> = {
    
        return ExternalDatasource<ExcelDSSchemaItem>(identifier: DatasourceConfig.External.ExcelDS.identifier,
                                             baseUrl: DatasourceConfig.External.baseUrl,
                                             appIdentifier: DatasourceConfig.External.appIdentifier,
                                             apikey: DatasourceConfig.External.apiKey)
    }()
	
	lazy var SheetDS: ExternalDatasource<Sheet1Schema1Item> = {
    
        return ExternalDatasource<Sheet1Schema1Item>(identifier: DatasourceConfig.External.SheetDS.identifier,
                                             baseUrl: DatasourceConfig.External.baseUrl,
                                             appIdentifier: DatasourceConfig.External.appIdentifier,
                                             apikey: DatasourceConfig.External.apiKey)
    }()
	
	lazy var CloudantDS: CloudantDatasource<CloudantDSSchemaItem> = {
    
        return CloudantDatasource<CloudantDSSchemaItem>(url: DatasourceConfig.Cloudant.CloudantDS.url,
                                             datastoreName: DatasourceConfig.Cloudant.CloudantDS.datastoreName,
                                             indexes: [CloudantDSSchemaItemMapping.first_name]) 
    }()
	
	func sync() {
	
        CloudantDS.sync()
    }
}

