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

    
    //@Published var ciudad = "Amorobieta-Etxano"
    @Published var pcr = "0"{
        didSet {
            cargarDatos()
        }
    }
    
    let url = "https://opendata.euskadi.eus/contenidos/ds_informes_estudios/covid_19_2020/opendata/generated/covid19-bymunicipality.json"
    
    func cargarDatos() {
        
        AF.request(url)
                    .validate(statusCode: 200..<300)
                    .validate(contentType: ["application/json"])
                    .responseJSON { response in
                        print("Request: \(String(describing: response.request))")   // original url request
                        print("Response: \(String(describing: response.response))") // http url response
                        print("Result: \(response.result)")                         // response serialization result

                        if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                            print("Data: \(utf8Text)") // original server data as UTF8 string
                            do{
                                 // Get json data
                                let json = try JSON(data: data)
                                // Loop sub-json countries array
                                for (_, subJson) in json["date"] {
                                    // Display country name
                                    if let pcr = subJson["pcrTestCount"].string {
                                        print("Date: \(pcr)");
                                    }
                                }
                           }catch{
                                print("Unexpected error: \(error).")
                            }
                        }
                }            }
    }

