//
//  SwiftUIView.swift
//  Euskovid
//
//  Created by igor anton on 15/02/2021.
//

import SwiftUI

struct Positivos: View {
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        ZStack{

           
            Image( "doctor")
                .resizable().scaledToFit().opacity(0.7)

            Color(.systemFill)
               .ignoresSafeArea()

            VStack(spacing:20){
                Text("Fecha")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .background(Color.red.opacity(0.2))
                Text(vm.fecha)
                    .font(.title)
                    .padding(60)
                Text("Positivos")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .background(Color.red.opacity(0.2))
                Text(vm.positivos)
                    .font(.title)
                    .padding(20)
                Text("Incidencia")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .background(Color.red.opacity(0.2))
                Text(vm.incidencia)
                    .font(.title)
                    .padding(20)
                
                Button("Cargar datos") {
                    vm.cargarDatos()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.yellow)
                .cornerRadius(10.0)
                
            }
            .navigationBarTitle("Volver", displayMode: .inline)
        }
    }
}
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                Positivos()
            }
        }

