//
//  SwiftUIView.swift
//  Euskovid
//
//  Created by igor anton on 15/02/2021.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            
            Image( "doctor")
                .resizable().scaledToFit().opacity(0.7)
            VStack{
                Button(action: {
                            
                            print("Button Tapped")
                            
                        }) {
                            
                            Text("Historico").font(.body)
                            Image(systemName: "book.fill")
                                
                            
                        }
                        .frame(width: 200, height: 30, alignment: .center)
                .foregroundColor(.blue)
                        .padding(.all)
                .background(Color.yellow)
                        .cornerRadius(30)
                .padding()
                Button(action: {
                            
                            
                            
                        }) {
                            
                            Text("Historico").font(.body)
                            Image(systemName: "book.fill")
                               
                            
                        }
                        .frame(width: 200, height: 30, alignment: .center)
                .foregroundColor(.blue)
                        .padding(.all)
                .background(Color.yellow)
                        .cornerRadius(30)
                .padding()
                Button(action: {
                            
                            print("Button Tapped")
                            
                        }) {
                            
                            Text("Historico").font(.body)
                            Image(systemName: "book.fill")
                               
                            
                        }
                        .frame(width: 200, height: 30, alignment: .center)
                .foregroundColor(.blue)
                        .padding(.all)
                .background(Color.yellow)
                        .cornerRadius(30)
                .padding()
                Button(action: {
                            
                            print("Button Tapped")
                            
                        }) {
                            
                            Text("Historico").font(.body)
                            Image(systemName: "book.fill")
                               
                            
                        }
                        .frame(width: 200, height: 30, alignment: .center)
                .foregroundColor(.blue)
                        .padding(.all)
                .background(Color.yellow)
                        .cornerRadius(30)
            }
        }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView()
        }
    }
}
