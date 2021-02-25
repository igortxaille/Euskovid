//
//  SwiftUIView.swift
//  Euskovid
//
//  Created by igor anton on 20/02/2021.
//

import SwiftUI
enum edad: String, CaseIterable, Identifiable {
    case hasta9
    case de10a19
    case de20a29
    case de30a39
    case de40a49
    case de50a59
    case de60a69
    case de70a79
    case de80a89
    case mas90
    var id: String { self.rawValue }}
struct Edad: View {
    @ObservedObject var vm = ViewModel()
    @State private var selectedEdad = edad.hasta9
    var body: some View {
        
        ZStack{
        
            HStack{
                
            Picker("edad", selection: $selectedEdad) {
                Text("De 0 a 9 años").tag(edad.hasta9)
                Text("de 10 a 19 años").tag(edad.de10a19)
                Text("de 20 a 29 años").tag(edad.de20a29)
                Text("De 30 a 39 años").tag(edad.de30a39)
                Text("de 40 a 49 años").tag(edad.de40a49)
                Text("de 50 a 59 años").tag(edad.de50a59)
                Text("De 60 a 69 años").tag(edad.de60a69)
                Text("de 70 a 79 años").tag(edad.de70a79)
                Text("de 80 a 89 años").tag(edad .de80a89)
                Text("mas de 90").tag(edad.mas90)
                         }
         
            }
            
            VStack{
            
                
                if selectedEdad.rawValue == edad.hasta9.rawValue{
                    pickerEdad()
                }
                if selectedEdad.rawValue == edad.de10a19.rawValue{
                    pickerEdad()
                        
                        
                }
                if selectedEdad.rawValue == edad.de20a29.rawValue{
                 pickerEdad()
                        
                       
                }
                if selectedEdad.rawValue == edad.de30a39.rawValue{
                   pickerEdad()
                        
                        
                }
                if selectedEdad.rawValue == edad.de40a49.rawValue{
                    pickerEdad()
                        
                        
                }
                if selectedEdad.rawValue == edad.de50a59.rawValue{
                    pickerEdad()
                        
                        
                }
                if selectedEdad.rawValue == edad.de60a69.rawValue{
                    pickerEdad()
                    
                       
                }
                if selectedEdad.rawValue == edad.de70a79.rawValue{
                    pickerEdad()
                        
                        
                }
                if selectedEdad.rawValue == edad.de80a89.rawValue{
                    pickerEdad()
                       
                        
                }
                if selectedEdad.rawValue == edad.mas90.rawValue{
                    pickerEdad()
                        
                        
                }
                
            }
                   }
        
            .navigationBarTitle("Volver", displayMode: .inline)
            .onAppear(){
                vm.cargarPCR()
 
        }
        
        
    }
    func pickerEdad() -> Text{
        if selectedEdad.rawValue == edad.hasta9.rawValue{
            return Text(vm.hasta9)
               
                
        }
        if selectedEdad.rawValue == edad.de10a19.rawValue{
            return Text(vm.d10)
                
                
        }
        if selectedEdad.rawValue == edad.de20a29.rawValue{
           return Text(vm.d20)
                
               
        }
        if selectedEdad.rawValue == edad.de30a39.rawValue{
            return Text(vm.d30)
                
                
        }
        if selectedEdad.rawValue == edad.de40a49.rawValue{
            return Text(vm.d40)
                
                
        }
        if selectedEdad.rawValue == edad.de50a59.rawValue{
            return Text(vm.d50)
                
                
        }
        if selectedEdad.rawValue == edad.de60a69.rawValue{
            return Text(vm.d60)
            
               
        }
        if selectedEdad.rawValue == edad.de70a79.rawValue{
            return Text(vm.d70)
                
                
        }
        if selectedEdad.rawValue == edad.de80a89.rawValue{
            return Text(vm.d80)
               
                
        }
        if selectedEdad.rawValue == edad.mas90.rawValue{
            return Text(vm.d90)
                
                
        }
        return Text("Error")
    }
}



    struct Edad_Previews:
        PreviewProvider {
        static var previews: some View {
            Edad()
    }
}

