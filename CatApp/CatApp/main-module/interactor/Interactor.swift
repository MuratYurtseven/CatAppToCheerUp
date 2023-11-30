//
//  Interactor.swift
//  CatApp
//
//  Created by Murat on 30.11.2023.
//

import Foundation
import Alamofire

class Interactor:PresenterToInteractorProtocol{

    

    var presenter:InteractorToPresenterProtocol?
 
    func getAllCats() {
        
        let headers:HTTPHeaders = ["authorization":"apikey live_klC0Hkevo81Ig58DoUSxkMvJ0UdXEkVboKBrsaJ0MDnkgnZhgeLRthhipJzgfjO0"]
        let url = "https://api.thecatapi.com/v1/breeds"
        
        AF.request(url,method: .get,headers: headers).validate().responseDecodable(of: [CatResponse].self){ response in
            switch response.result{
            case .success(let cevap):
                let sendedData = cevap
                self.presenter?.sendDataToPresenter(sendedData: sendedData)
                
               
            case .failure(let error):
                print("Erorr : \(error.localizedDescription)")
            }}}
    
    
    func getCatImages(catBreedId: String) {
        let headers:HTTPHeaders = ["authorization":"apikey live_klC0Hkevo81Ig58DoUSxkMvJ0UdXEkVboKBrsaJ0MDnkgnZhgeLRthhipJzgfjO0"]
        let baseURL = "https://api.thecatapi.com/v1/images/search"
        let url = "\(baseURL)?limit=5&breed_ids=\(catBreedId)&api_key=REPLACE_ME"
        
        AF.request(url,method: .get,headers: headers).validate().responseDecodable(of: [CatImages].self){ response in
            switch response.result{
            case .success(let cevap):
                self.presenter?.sendUrlsToPresenter(sendedUrl: cevap)
                
            case .failure(let error):
                print("Erorr : \(error.localizedDescription)")
            }}
    }
}
