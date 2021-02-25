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
           
            List{
                Text(vm.pueblo)
            }
          
            .navigationBarTitle("Volver", displayMode: .inline)
            .onAppear(){
                vm.cargarPCR()
        }
       
    }
        }
    }

struct Municipios_Previews: PreviewProvider {
    static var previews: some View {
        Municipios()
    }
}
