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
    @Published var pueblo = "1"
    @Published var positCount = "1"
    @Published var hombre = "1"
    @Published var mujer = "1"
    @Published var hasta9 = "1"
    @Published var d10 = "2"
    @Published var d20 = "3"
    @Published var d30 = "4"
    @Published var d40 = "1"
    @Published var d50 = "1"
    @Published var d60 = "1"
    @Published var d70 = "1"
    @Published var d80 = "1"
    @Published var d90 = "1"
    @Published var r0 = "1.0"
    @Published var pcrCount = "1"
    @Published var Totalpositivo = "10"
    @Published var ingresos = "1"
    
    
    
    func cargarPCR(){
        let pcr = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-pcr.json"
        
        
        AF.request(pcr, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let pcrJson = JSON(value)

                let ultimo = pcrJson["byDate"].array!.last
                
                self.positivos = ultimo!["positiveCount"].stringValue
                    
                self.incidencia = ultimo!["aggregatedIncidence"].stringValue
                self.fecha = ultimo!["date"].stringValue
                

            case .failure(let error):
                print(error)
            }
        }
        let edad = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-pcr-positives.json"
        
        AF.request(edad, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let edadJson = JSON(value)

                let ultimo = edadJson["byDate"].array!.last
                
                self.hombre = ultimo!["menCount"].stringValue
                self.mujer = ultimo!["womenCount"].stringValue
                self.hasta9 = ultimo!["age_0_9_Count"].stringValue
                self.d10 = ultimo!["age_10_19_Count"].stringValue
                self.d20 = ultimo!["age_20_29_Count"].stringValue
                self.d30 = ultimo!["age_30_39_Count"].stringValue
                self.d40 = ultimo!["age_40_49_Count"].stringValue
                self.d50 = ultimo!["age_50_59_Count"].stringValue
                self.d60 = ultimo!["age_60_69_Count"].stringValue
                self.d70 = ultimo!["age_70_79_Count"].stringValue
                self.d80 = ultimo!["age_80_89_Count"].stringValue
                self.d90 = ultimo!["age_90_X_Count"].stringValue
            case .failure(let error):
                print(error)
            }
        }
            let municipios = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-bymunicipality.json"
            AF.request(municipios, method: .get).validate().responseJSON { response in
                switch response.result {
                case .success(let value):
                    let muniJson = JSON(value)

                    let ultimo = muniJson["date"].array!.last
                    
                    //self.fecha = ultimo!["date"].stringValue
                    self.pueblo = ultimo!["officialName"].stringValue
                    self.positCount = ultimo!["positiveCount"].stringValue
                    
                
                case .failure(let error):
                    print(error)
                }
            }
        
      
            
        
        
            let situacion = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-epidemic-status.json"
            AF.request(situacion, method: .get).validate().responseJSON { response in
                switch response.result {
                case .success(let value):
                    let situJson = JSON(value)

                    let ultimo = situJson["byDate"].array!.last
                    
                    self.pcrCount = ultimo!["pcrTestCount"].stringValue
                    self.Totalpositivo = ultimo!["pcrPositiveCount"].stringValue
                    self.r0 = ultimo!["r0"].stringValue
                    self.ingresos = ultimo!["newHospitalAdmissionsWithPCRCount"].stringValue
                    

                case .failure(let error):
                    print(error)
                }
            }
        }
    
    
    }

