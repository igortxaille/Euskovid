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
            Color(.systemFill)
               .ignoresSafeArea()
           
            VStack{
                
                Text("Fecha")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.blue.opacity(0.5))
                Text(vm.fecha)
                    .font(.title)
                    .padding(180)
                    
            }
             
                    
                HStack{
                    
                    VStack{
                Text("Positivos")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.blue.opacity(0.5))
                    
                Text(vm.positivos)
                    .font(.title)
                    .padding(20)
                    
                        
                Text("Incidencia")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.blue.opacity(0.5))
                Text(vm.incidencia)
                    .font(.title)
                    .padding(20)
                    }
               
                .padding()
                .foregroundColor(.black)
                .background(Color.yellow)
                .cornerRadius(100.0)
                    }
            }
        
            
            .navigationBarTitle("Volver", displayMode: .inline)
            .onAppear(){
                vm.cargarPCR()
            }
        }
    }

        struct Positivos_Previews: PreviewProvider {
            static var previews: some View {
                Positivos()
            }
        }

