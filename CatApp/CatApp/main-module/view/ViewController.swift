//
//  ViewController.swift
//  CatApp
//
//  Created by Murat on 28.11.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pickerView: UIPickerView!
    // Horizantel ScroolView -> Images
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    
    //Vertifical ScroolView -> Labels
    
    @IBOutlet weak var catNameLabel: UILabel!
    @IBOutlet weak var catTemperamentLabel: UILabel!
    @IBOutlet weak var catPlotLabel: UITextView!
    @IBOutlet weak var catOriginLabel: UILabel!
    
    //Cat Affection Level and Buttons and ButtonsList
    @IBOutlet weak var catAffectionLevel: UILabel!
    @IBOutlet weak var AFL1: UIButton!
    @IBOutlet weak var AFL2: UIButton!
    @IBOutlet weak var AFL3: UIButton!
    @IBOutlet weak var AFL4: UIButton!
    @IBOutlet weak var AFL5: UIButton!
    var listAFL=[UIButton]()
    
    //Cat Adatability Level and Buttons
    @IBOutlet weak var catAdaptabilityLevel: UILabel!
    @IBOutlet weak var ALB1: UIButton!
    @IBOutlet weak var ALB2: UIButton!
    @IBOutlet weak var ALB3: UIButton!
    @IBOutlet weak var ALB4: UIButton!
    @IBOutlet weak var ALB5: UIButton!
    var listALB=[UIButton]()
    
    //Cat Child Friendly Level
    @IBOutlet weak var catChildFriendlyLevel: UILabel!
    @IBOutlet weak var CFLB1: UIButton!
    @IBOutlet weak var CFLB2: UIButton!
    @IBOutlet weak var CFLB3: UIButton!
    @IBOutlet weak var CFLB4: UIButton!
    @IBOutlet weak var CFLB5: UIButton!
    var listCFLB=[UIButton]()
    
    //Cat Dog Friendly Level
    @IBOutlet weak var catDogFriendlyLevel: UILabel!
    @IBOutlet weak var DFLB1: UIButton!
    @IBOutlet weak var DFLB2: UIButton!
    @IBOutlet weak var DFLB3: UIButton!
    @IBOutlet weak var DFLB4: UIButton!
    @IBOutlet weak var DFLB5: UIButton!
    var listDFLB=[UIButton]()
    
    //Cat Energy Level
    @IBOutlet weak var catEneryLevel: UILabel!
    @IBOutlet weak var ELB1: UIButton!
    @IBOutlet weak var ELB2: UIButton!
    @IBOutlet weak var ELB3: UIButton!
    @IBOutlet weak var ELB4: UIButton!
    @IBOutlet weak var ELB5: UIButton!
    var listELB=[UIButton]()
    
    //Cat Health Issues Level
    @IBOutlet weak var catHealthIssuesLevel: UILabel!
    @IBOutlet weak var HILB1: UIButton!
    @IBOutlet weak var HILB2: UIButton!
    @IBOutlet weak var HILB3: UIButton!
    @IBOutlet weak var HILB4: UIButton!
    @IBOutlet weak var HILB5: UIButton!
    var listHILB=[UIButton]()

    //Cat Intelligence Level
    @IBOutlet weak var catIntelligenceLevel: UILabel!
    @IBOutlet weak var ILB1: UIButton!
    @IBOutlet weak var ILB2: UIButton!
    @IBOutlet weak var ILB3: UIButton!
    @IBOutlet weak var ILB4: UIButton!
    @IBOutlet weak var ILB5: UIButton!
    var listILB=[UIButton]()
    

    var presenterObject : ViewToPresenterProtocol?
    
    var listNameAndCats = [String:CatResponse]()
    
    var justOneTimesLaod = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        Router.CreateModule(ref:self)
        
        //Buttons Added to Lists
        listAFL = [AFL1,AFL2,AFL3,AFL4,AFL5]
        listALB = [ALB1,ALB2,ALB3,ALB4,ALB5]
        listCFLB = [CFLB1,CFLB2,CFLB3,CFLB4,CFLB5]
        listDFLB = [DFLB1,DFLB2,DFLB3,DFLB4,DFLB5]
        listELB = [ELB1,ELB2,ELB3,ELB4,ELB5]
        listHILB = [HILB1,HILB2,HILB3,HILB4,HILB5]
        listILB = [ILB1,ILB2,ILB3,ILB4,ILB5]


    }
    override func viewWillAppear(_ animated: Bool) {
        self.presenterObject?.toGetAllCats()
    }
    
    
    
    @IBAction func toWikiButton(_ sender: Any) {
    }
    
    
    
    @IBAction func toVetstreetButton(_ sender: Any) {
    }
    

    @IBAction func toCFAButton(_ sender: Any) {
    }
    
    func funcOfButtons(buttonsList:[UIButton],indeks:Int){
        
        for button in buttonsList{
            let image = UIImage(systemName: "star")
            button.setImage(image, for: .normal)
        }
        
        for gIndeks in 0...(indeks-1){
            let image = UIImage(systemName: "star.fill")
            buttonsList[gIndeks].setImage(image, for: .normal)
        }
    }
}

extension ViewController:PresenterToViewProtocol{
    func sendDataToView(sendData: Array<CatResponse>) {
        for item in sendData{
            self.listNameAndCats[item.name!] = item
            if justOneTimesLaod{
                catNameLabel.text = item.name
                catTemperamentLabel.text = item.temperament
                catPlotLabel.text = item.description
                catOriginLabel.text = item.origin
                funcOfButtons(buttonsList: listAFL, indeks: item.affection_level!)
                funcOfButtons(buttonsList: listALB, indeks: item.adaptability!)
                funcOfButtons(buttonsList: listCFLB, indeks: item.child_friendly!)
                funcOfButtons(buttonsList: listDFLB, indeks: item.dog_friendly!)
                funcOfButtons(buttonsList: listELB, indeks: item.energy_level!)
                funcOfButtons(buttonsList: listHILB, indeks: item.health_issues!)
                funcOfButtons(buttonsList: listILB, indeks: item.intelligence!)
                self.presenterObject?.getCatImages(catBreedId: item.id!)
                justOneTimesLaod = false
            }
        }
        DispatchQueue.main.async {
            self.pickerView.reloadAllComponents()
        }
    }
    func sendUrlsToView(sendUrl: Array<CatImages>) {
        print(sendUrl)
        for (indeks,catImage) in sendUrl.enumerated(){
            if let urlString = catImage.url , let url = URL(string: urlString){
                DispatchQueue.global().async {
                    if let data = try? Data(contentsOf: url){
                        DispatchQueue.main.asyncAfter(deadline: .now()+0.10) {
                            switch indeks{
                            case 0:
                                self.firstImageView.image = UIImage(data: data)
                                
                            case 1:
                                self.secondImageView.image = UIImage(data: data)
                                
                            case 2:
                                self.thirdImageView.image = UIImage(data: data)
                               
                            case 3:
                                self.fourthImageView.image = UIImage(data: data)
                                
                            case 4:
                                self.fifthImageView.image = UIImage(data: data)
                                
                            default:
                                break
                            }}}}}}}
    
}

extension ViewController : UIPickerViewDelegate,UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.listNameAndCats.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array(listNameAndCats.keys)[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selecetedCatName = Array(listNameAndCats.keys)[row]
        if let selectedCatDetails = listNameAndCats[selecetedCatName]{
            catNameLabel.text = selectedCatDetails.name
            catTemperamentLabel.text = selectedCatDetails.temperament
            catPlotLabel.text = selectedCatDetails.description
            catOriginLabel.text = selectedCatDetails.origin
            funcOfButtons(buttonsList: listAFL, indeks: selectedCatDetails.affection_level!)
            funcOfButtons(buttonsList: listALB, indeks: selectedCatDetails.adaptability!)
            funcOfButtons(buttonsList: listCFLB, indeks: selectedCatDetails.child_friendly!)
            funcOfButtons(buttonsList: listDFLB, indeks: selectedCatDetails.dog_friendly!)
            funcOfButtons(buttonsList: listELB, indeks: selectedCatDetails.energy_level!)
            funcOfButtons(buttonsList: listHILB, indeks: selectedCatDetails.health_issues!)
            funcOfButtons(buttonsList: listILB, indeks: selectedCatDetails.intelligence!)
            self.presenterObject?.getCatImages(catBreedId: selectedCatDetails.id!)
        }
    }
}
