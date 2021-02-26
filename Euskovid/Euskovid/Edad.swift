//
//  SwiftUIView.swift
//  Euskovid
//
//  Created by igor anton on 20/02/2021.
//

import SwiftUI
enum edad: CaseIterable, Identifiable, Hashable, CustomStringConvertible {

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

    // Identifiable
    var id: Self { self }

    // CustomStringConvertible
    // REF: https://martin.pizza/articles/posts/2020-05-30/reusable-picker-for-enums-in-swiftui.html
    var description: String {
        switch self {
        case .hasta9: return "De 0 a 9 años"
        case .de10a19: return "de 10 a 19 años"
        case .de20a29: return "de 20 a 29 años"
        case .de30a39: return "De 30 a 39 años"
        case .de40a49: return "de 40 a 49 años"
        case .de50a59: return "de 50 a 59 años"
        case .de60a69: return "De 60 a 69 años"
        case .de70a79: return "de 70 a 79 años"
        case .de80a89: return "de 80 a 89 años"
        case .mas90: return "más de 90"
        }
    }
}

struct Edad: View {
    @ObservedObject var vm = ViewModel()
    @State private var selectedEdad = edad.hasta9
    var body: some View {

        VStack {

            Picker("edad", selection: $selectedEdad) {
                ForEach(Array(edad.allCases)) { value in
                    Text(value.description).tag(value)
                }
            }

            pickerEdad()
                .padding()

        }
            .navigationBarTitle("Volver", displayMode: .inline)
            .onAppear() {
            vm.cargarEdad()

        }


    }

    func pickerEdad() -> Text {

        switch selectedEdad {
        case .hasta9: return Text(vm.hasta9)
        case .de10a19: return Text(vm.d10)
        case .de20a29: return Text(vm.d20)
        case .de30a39: return Text(vm.d30)
        case .de40a49: return Text(vm.d40)
        case .de50a59: return Text(vm.d50)
        case .de60a69: return Text(vm.d60)
        case .de70a79: return Text(vm.d70)
        case .de80a89: return Text(vm.d80)
        case .mas90: return Text(vm.d90)
        }

    }
}



struct Edad_Previews:
    PreviewProvider {
    static var previews: some View {
        Edad()
    }
}

