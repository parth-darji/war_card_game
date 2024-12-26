//
//  ContentView.swift
//  warcardgame
//
//  Created by Parth Darji on 12/19/24.
//

import SwiftUI

struct ContentView: View {
    var playerCard = "card7"
    var playerScore = 0
    
    var cpuCard = "card13"
    var cpuScore = 0
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal()
                } label:  {
                    Image("button")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack  {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 2.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack  {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 2.0)
                        
                        Text(String(cpuScore))
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
