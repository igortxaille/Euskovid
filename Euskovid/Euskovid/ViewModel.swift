//
//  ViewModel.swift
//  Euskovid
//
//  Created by igor anton on 05/02/2021.
//

import Foundation


import Alamofire
import SwiftyJSON

enum Dia: String, CaseIterable, Identifiable {
    case hoy
    case ayer
    

    var id: String { self.rawValue }
}

class ViewModel: ObservableObject {
    
    @Published var positivos = "15"
    @Published var incidencia = "15"
    
    
    func mostrarDatos(){
        let url = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-pcr.json"
        
    AF.request(url, method: .get).validate().responseJSON { response in
        switch response.result {
        case .success(let value):
            let json = JSON(value)
            
            self.positivos = json["byDate"][0]["positiveCount"].stringValue
            self.incidencia = json["byDate"][0]["aggregatedIncidence"].stringValue
            
        case .failure(let error):
            print(error)
        }
    }
    
    }
}
