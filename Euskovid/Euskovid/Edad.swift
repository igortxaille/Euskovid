//
//  SwiftUIView.swift
//  Euskovid
//
//  Created by igor anton on 20/02/2021.
//

import SwiftUI

struct Edad: View {
    @ObservedObject var vm = ViewModel()
    
  
    var body: some View {
        ZStack{
            ScrollView{
        
            VStack{
                UITableView{
                    
                }
                Text("0-9")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.hasta9)
                    .font(.title3)
                    .padding(60)
            
                Text("10-19")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d10)
                    .font(.title3)
                    .padding(20)
                Text("20-29")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d20)
                    .font(.title)
                    .padding(20)
            }
            VStack{
                Text("30-39")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d30)
                    .font(.title3)
                    .padding(60)
            
                Text("40-49")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d40)
                    .font(.title3)
                    .padding(20)
                Text("50-59")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d50)
                    .font(.title)
                    .padding(20)
            }
            VStack{
                Text("60-69")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d60)
                    .font(.title3)
                    .padding(60)
            
                Text("70-79")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d70)
                    .font(.title3)
                    .padding(20)
                Text("80-89")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d80)
                    .font(.title)
                    .padding(20)
            }
            VStack{
                Text("90-X")
                    .foregroundColor(.black)
                    .font(.title3)
                    .background(Color.red.opacity(0.2))
                Text(vm.d90)
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
            }
    }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Edad()
    }
}
