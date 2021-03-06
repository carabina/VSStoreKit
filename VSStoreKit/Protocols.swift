//
//  Protocols.swift
//  VSStoreKit
//
//  Created by Vladimir Shutyuk on 11/06/2017.
//  Copyright © 2017 Vladimir Shutyuk. All rights reserved.
//

import Foundation


public protocol LocalProductsProtocol {
    
    var productsCount: Int { get }
    var productIdentifiers: Set<String> { get }
    func nameForProductAtIndex(_ index: Int) -> String
    func identifierForProductAtIndex(_ index: Int) -> String
    func descriptionForProductAtIndex(_ index: Int) -> String
}

public protocol StoreAccessProtocol {
    
    func requestProductsWithIdentifiers(_ identifiers: Set<String>)
    var productsReceived: Bool { get }
    
    func localizedNameForProductWithIdentifier(_ identifier: String) -> String?
    func localizedPriceForProductWithIdentifier(_ identifier: String) -> String?
    func localizedDescriptionForProductWithIdentifier(_ identifier: String) -> String?
    
    func purchaseProductWithIdentifier(_ identifier: String)
    
    func restorePurchases()
}

public protocol PurchasedProductsProtocol {
    
    func isPurchasedProductWithIdentifier(_ identifier: String) -> Bool
    func markProductAsPurchased(_ identifier: String)
}
