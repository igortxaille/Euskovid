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
        
        NavigationView {
            
        ZStack{
           
            Image( "doctor")
                .resizable().scaledToFit().opacity(0.7)
            VStack{
                
                NavigationLink(destination: Positivos()) {
                    
                                    Text("Nº Positivos")
                                    .frame(minWidth: 0, maxWidth: 300)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(40)
                                        .font(.title)}
                    .padding(20)
                NavigationLink(destination: Municipios()) {
                                    Text("Municipios")
                                    .frame(minWidth: 0, maxWidth: 300)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(40)
                                        .font(.title)}
                    .padding(20)
                NavigationLink(destination: Edad()) {
                                    Text("Edad y Sexo")
                                    .frame(minWidth: 0, maxWidth: 300)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(40)
                                        .font(.title)}
                    .padding(20)
                NavigationLink(destination: Situacion()) {
                                    Text("Situaciòn Epidemica")
                                    .frame(minWidth: 0, maxWidth: 300)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                    .cornerRadius(40)
                                        .font(.title)}
                    .padding(20
                    )
                
               
            }
        }
        }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
        
