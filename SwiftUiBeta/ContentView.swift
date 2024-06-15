//
//  ContentView.swift
//  SwiftUiBeta
//
//  Created by Seba on 12-06-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("HStack y VStack", destination:
                    ZStack(){
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Siguiendo")
                                .font(.largeTitle)
                                .bold()
                            Text("CANALES RECOMENDADOS")
                                .foregroundColor(.gray)
                            HStack {
                                Rectangle()
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    .frame(width: 118, height: 68)
                                VStack (alignment: .leading){
                                    HStack{
                                        Circle()
                                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                            .frame(width: 18, height: 18)
                                        Text("username")
                                    }
                                    Text("straming de programacion")
                                    Text("solo hablando")
                                    
                                }
                            }
                        }
                            Text("Subscribirse a SwiftBeta")
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.red)
                                .underline()
                                .background(Color.black)
                                .rotationEffect(.degrees(-20))
                })
                
                NavigationLink("Images", destination: 
                    VStack(alignment: .leading, spacing: 8) {
                        Image("youtube")
                            .renderingMode(.template)
                            .resizable(resizingMode: .tile)
                            .scaledToFit()
                            .frame(width: 96)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Image("youtube")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 96)
                })
                
                NavigationLink("Next", destination: Text("Next"))
            }
            
            .navigationBarItems(trailing: Button("done", action: {
                print("NavigationView Button")
            }))
            .navigationTitle("Curso Swift")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}
