//
//  ContentView.swift
//  warcardgame
//
//  Created by Parth Darji on 12/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea()
            VStack {
                Image("niagara_falls").resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                Text("Niagara Falls").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.black).foregroundColor(Color.white).textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
            }
        }
        
        
    }
}

#Preview {
    ContentView()
}
