//
//  ContentView.swift
//  Euskovid
//
//  Created by igor anton on 05/02/2021.
//

import SwiftUI

import Alamofire
import SwiftyJSON
struct ContentView: View {
   
    
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
       
        ZStack{
           
            Image( "doctor")
                .resizable().scaledToFit().opacity(0.7)
            VStack{
                
                Text("Positivos")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(Color.gray.opacity(0.2))
             
                    
                Text(vm.positivos)
                    .font(.title)
                    .padding(1)
                Text(vm.incidencia)
                    .padding(1)
                Button("Cargar datos") {
                    vm.mostrarDatos()
                }
                
                
            }
        }
    }
}
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
