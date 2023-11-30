//
//  CatImages.swift
//  CatApp
//
//  Created by Murat on 30.11.2023.
//

import Foundation

class CatImages:Codable{
    var id : String?
    var url : String?
    var width : Int
    var height : Int?
    
    init(id:String,url:String,width:Int,height:Int){
        self.id = id
        self.url = url
        self.width = width
        self.height = height
    }
}
