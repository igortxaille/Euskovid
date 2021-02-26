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

            Color(.white)
               .ignoresSafeArea()

            VStack(spacing:1){
                HStack{
                    VStack{
                Text("r0")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.blue.opacity(0.5))
                Text(vm.r0)
                    .font(.title)
                    .padding(20)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.yellow)
                    .cornerRadius(100.0)
                
                Text("PCR Realizados")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.blue.opacity(0.5))
                Text(vm.pcrCount)
                    .font(.title)
                    .padding(20)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.yellow)
                    .cornerRadius(100.0)
                    .padding()
                }
                }
               
                    HStack{
                        
                        VStack{
                Text("Total Positivos")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.blue.opacity(0.5))
                            
                Text(vm.Totalpositivo)
                    .font(.title)
                    .padding(20)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.yellow)
                    .cornerRadius(100.0)
                
                Text("Nuevos ingresos")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.blue.opacity(0.5))
                Text(vm.ingresos)
                    .font(.title)
                    .padding(20)
                
                .padding()
                .foregroundColor(.black)
                .background(Color.yellow)
                .cornerRadius(100.0)
                        }
            }
            .navigationBarTitle("Volver", displayMode: .inline)
            .onAppear(){
                vm.cargarSituacion()
                
            }
    }
        }
    }
}
struct Situacion_Previews: PreviewProvider {
    static var previews: some View {
        Situacion()
    }
}

