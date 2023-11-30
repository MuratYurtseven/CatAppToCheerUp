//
//  Protocols.swift
//  CatApp
//
//  Created by Murat on 30.11.2023.
//

import Foundation

//Ana Protocols
protocol PresenterToInteractorProtocol{
    var presenter:InteractorToPresenterProtocol?{get set}
    
    func getAllCats()
    func getCatImages(catBreedId:String)
}

protocol ViewToPresenterProtocol{
    var interactor:PresenterToInteractorProtocol?{get set}
    var view:PresenterToViewProtocol?{get set}
    
    func toGetAllCats()
    func getCatImages(catBreedId:String)
    
}

//Taşıyıcı Protocols
protocol InteractorToPresenterProtocol{
    func sendDataToPresenter(sendedData:Array<CatResponse>)
    
    func sendUrlsToPresenter(sendedUrl:Array<CatImages>)
}

protocol PresenterToViewProtocol{
    func sendDataToView(sendData:Array<CatResponse>)
    func sendUrlsToView(sendUrl:Array<CatImages>)
}

//Router Protocol

protocol PresenterToRouterProtocol{
    static func CreateModule(ref:ViewController)
}

