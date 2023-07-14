//
//  ContentView.swift
//  About me app- kwk
//
//  Created by Cristiane Andrade on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var funFact = ""
    var body: some View {
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
        VStack (alignment: .center, spacing: 20 ) {
            
            Spacer()
            Text("Hi, I am Fernanda!")
            Spacer()
            ZStack{
                Image("sailing")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .padding()
                    .background(Rectangle().foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 10)
                    .padding()
            }
           
            Spacer()
            Button("Click here to see a fun fact about me!") {
                funFact = "I love sailing around"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.mint)
            
            Spacer()
            Text(funFact)
            Spacer()
                
        
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
