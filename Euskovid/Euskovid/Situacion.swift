//
//  Situacion.swift
//  Euskovid
//
//  Created by igor anton on 20/02/2021.
//

import SwiftUI

struct Situacion : View {
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        ZStack{

           
            Image( "doctor")
                .resizable().scaledToFit().opacity(0.7)

            Color(.systemFill)
               .ignoresSafeArea()

            VStack(spacing:1){
                
                Text("r0")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .background(Color.red.opacity(0.2))
                Text(vm.r0)
                    .font(.title)
                    .padding(60)
                
                Text("PCR")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .background(Color.red.opacity(0.2))
                Text(vm.pcrCount)
                    .font(.title)
                    .padding(20)
                Text("Total Positivos")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .background(Color.red.opacity(0.2))
                Text(vm.Totalpositivo)
                    .font(.title)
                    .padding(20)
                
                Text("Nuevos ingresos")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .background(Color.red.opacity(0.2))
                Text(vm.ingresos)
                    .font(.title)
                    .padding(20)
                Button("Cargar datos") {
                    vm.cargarPCR()
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
    


struct Situacion_Previews: PreviewProvider {
    static var previews: some View {
        Situacion()
    }
}

