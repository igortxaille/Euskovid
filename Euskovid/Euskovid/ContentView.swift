//
//  ContentView.swift
//  Euskovid
//
//  Created by igor anton on 05/02/2021.
//

import SwiftUI

struct ContentView: View {
   
    
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
           ZStack {
                Color("Fondo")
                  .ignoresSafeArea()
            
            VStack {
                
               
                Text(vm.pcr)
                    .multilineTextAlignment(.center)
            }
            
            
}
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
