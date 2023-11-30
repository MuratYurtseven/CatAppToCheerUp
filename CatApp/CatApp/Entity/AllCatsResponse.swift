//
//  AllCatsResponse.swift
//  CatApp
//
//  Created by Murat on 30.11.2023.
//

import Foundation

class CatResponse : Codable{
    var weight : Weight?
    var id : String?
    var name : String?
    var cfa_url : String?
    var vetstreet_url : String?
    var vcahospitals_url : String?
    var temperament : String?
    var origin : String?
    var country_codes : String?
    var country_code : String?
    var description : String?
    var life_span : String?
    var indoor : Int?
    var lap : Int?
    var alt_names : String?
    var adaptability : Int?
    var affection_level : Int?
    var child_friendly : Int?
    var dog_friendly : Int?
    var energy_level : Int?
    var grooming : Int?
    var health_issues : Int?
    var intelligence : Int?
    var shedding_level : Int?
    var social_needs : Int?
    var stranger_friendly : Int?
    var vocalisation : Int?
    var experimental : Int?
    var hairless : Int?
    var natural : Int?
    var rare : Int?
    var rex : Int?
    var suppressed_tail : Int?
    var short_legs : Int?
    var wikipedia_url : String?
    var hypoallergenic : Int?
    var reference_image_id : String?
    
    init(weight: Weight, id: String, name: String, cfa_url: String, vetstreet_url: String, vcahospitals_url: String, temperament: String, origin: String, country_codes: String, country_code: String, description: String, life_span: String, indoor: Int, lap: Int, alt_names: String, adaptability: Int, affection_level: Int, child_friendly: Int, dog_friendly: Int, energy_level: Int, grooming: Int, health_issues: Int, intelligence: Int, shedding_level: Int, social_needs: Int, stranger_friendly: Int, vocalisation: Int, experimental: Int, hairless: Int, natural: Int, rare: Int, rex: Int, suppressed_tail: Int, short_legs: Int, wikipedia_url: String, hypoallergenic: Int, reference_image_id: String) {
        self.weight = weight
        self.id = id
        self.name = name
        self.cfa_url = cfa_url
        self.vetstreet_url = vetstreet_url
        self.vcahospitals_url = vcahospitals_url
        self.temperament = temperament
        self.origin = origin
        self.country_codes = country_codes
        self.country_code = country_code
        self.description = description
        self.life_span = life_span
        self.indoor = indoor
        self.lap = lap
        self.alt_names = alt_names
        self.adaptability = adaptability
        self.affection_level = affection_level
        self.child_friendly = child_friendly
        self.dog_friendly = dog_friendly
        self.energy_level = energy_level
        self.grooming = grooming
        self.health_issues = health_issues
        self.intelligence = intelligence
        self.shedding_level = shedding_level
        self.social_needs = social_needs
        self.stranger_friendly = stranger_friendly
        self.vocalisation = vocalisation
        self.experimental = experimental
        self.hairless = hairless
        self.natural = natural
        self.rare = rare
        self.rex = rex
        self.suppressed_tail = suppressed_tail
        self.short_legs = short_legs
        self.wikipedia_url = wikipedia_url
        self.hypoallergenic = hypoallergenic
        self.reference_image_id = reference_image_id
    }
    
}
