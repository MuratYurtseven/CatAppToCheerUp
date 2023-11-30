//
//  Presenter.swift
//  CatApp
//
//  Created by Murat on 30.11.2023.
//

import Foundation

class Presenter:ViewToPresenterProtocol{

    
    var interactor:PresenterToInteractorProtocol?
    var view:PresenterToViewProtocol?
    
    func toGetAllCats() {
        interactor?.getAllCats()
    }
    func getCatImages(catBreedId: String) {
        interactor?.getCatImages(catBreedId: catBreedId)
    }
}

extension Presenter:InteractorToPresenterProtocol{
    func sendDataToPresenter(sendedData: Array<CatResponse> ) {
        self.view?.sendDataToView(sendData: sendedData)
        
    }
    
    func sendUrlsToPresenter(sendedUrl: Array<CatImages>) {
        self.view?.sendUrlsToView(sendUrl: sendedUrl)
        
    }
    
    
}
