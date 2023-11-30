//
//  Router.swift
//  CatApp
//
//  Created by Murat on 30.11.2023.
//

import Foundation

class Router:PresenterToRouterProtocol{
    
    static func CreateModule(ref:ViewController) {
        let presenter=Presenter()
        
        ref.presenterObject=presenter
        
        ref.presenterObject?.interactor=Interactor()
        
        ref.presenterObject?.view=ref
        
        ref.presenterObject?.interactor?.presenter=presenter
    }
}
