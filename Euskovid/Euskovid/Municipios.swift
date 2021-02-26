//
//  Municipios.swift
//  Euskovid
//
//  Created by igor anton on 20/02/2021.
//

import SwiftUI

struct Municipios: View {
    @ObservedObject var vm = ViewModel()
   
        var body: some View {
        
        VStack{
            Picker(selection: $vm.pueblo, label: Text("Brand")) {
                ForEach(vm.datos, id: \.self) { pueblo in
                    Text("\(pueblo.nombre)")                    
                }
                            }
            
            Text(String(vm.pueblo.positivos))
          
            .navigationBarTitle("Volver", displayMode: .inline)
            .onAppear(){
                vm.cargarPueblos()
        }
       
    }
        }
}
    

struct Municipios_Previews: PreviewProvider {
    static var previews: some View {
        Municipios()
    }
}
