//
//  AllCatsWeight.swift
//  CatApp
//
//  Created by Murat on 30.11.2023.
//

import Foundation

class Weight : Codable{
    var imperial : String?
    var metric : String?
    
    init(imperial: String, metric: String) {
        self.imperial = imperial
        self.metric = metric
    }
    
}
