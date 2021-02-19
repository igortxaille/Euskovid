//
//  ViewModel.swift
//  Euskovid
//
//  Created by igor anton on 05/02/2021.
//

import Foundation


import Alamofire
import SwiftyJSON



class ViewModel: ObservableObject {
    @Published var date = "0"
   
    @Published var incidencia = "15"
    @Published var positivos = "15"
    @Published var fecha = "1"
    
    
    func cargarDatos(){
        let pcr = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-pcr.json"
        let municipios = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-bymunicipality.json"
        let edad = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-pcr-positives.json"
        let situacion = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-epidemic-status.json"
        
        
        
        
        
    AF.request(pcr, method: .get).validate().responseJSON { response in
        switch response.result {
        case .success(let value):
            let json = JSON(value)

            let ultimo = json["byDate"].array!.last
            
            self.positivos = ultimo!["positiveCount"].stringValue
                
            self.incidencia = ultimo!["aggregatedIncidence"].stringValue
            self.fecha = ultimo!["date"].stringValue
            

        case .failure(let error):
            print(error)
        }
    }
        AF.request(municipios, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)

                let ultimo = json["byDate"].array!.last
                
                self.positivos = ultimo!["positiveCount"].stringValue
                    
                self.incidencia = ultimo!["aggregatedIncidence"].stringValue
                self.fecha = ultimo!["date"].stringValue
                

            case .failure(let error):
                print(error)
            }
        }
        AF.request(edad, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)

                let ultimo = json["byDate"].array!.last
                
                self.positivos = ultimo!["positiveCount"].stringValue
                    
                self.incidencia = ultimo!["aggregatedIncidence"].stringValue
                self.fecha = ultimo!["date"].stringValue
                

            case .failure(let error):
                print(error)
            }
        }
        AF.request(situacion, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)

                let ultimo = json["byDate"].array!.last
                
                self.positivos = ultimo!["positiveCount"].stringValue
                    
                self.incidencia = ultimo!["aggregatedIncidence"].stringValue
                self.fecha = ultimo!["date"].stringValue
                

            case .failure(let error):
                print(error)
            }
        }
    
    }
}
