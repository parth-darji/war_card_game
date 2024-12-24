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
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Button("Deal") {
                    deal()
                }.foregroundColor(.white)
                
//                Image("button")
                Spacer()
                HStack {
                    Spacer()
                    VStack  {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 2.0)
                           
                        Text("0")
                            .font(.largeTitle)
                          
                    }
                    Spacer()
                    VStack  {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 2.0)
     
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
            
        }
    }
    
    func deal() {
        print("deal cards")
    }
}

#Preview {
    ContentView()
}
