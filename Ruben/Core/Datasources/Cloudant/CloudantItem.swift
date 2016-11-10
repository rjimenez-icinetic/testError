//
//  CloudantItem.swift
//  Ruben
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation
import CDTDatastore

public protocol CloudantItem: Item {
    
    var revision: CDTDocumentRevision? { get }
    
    init?(revision: CDTDocumentRevision)
}