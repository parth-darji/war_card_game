//
//  ContentView.swift
//  WarCardGame
//
//  Created by Parth Darji on 12/19/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var playerScore = 0
    
    @State var cpuCard = "card13"
    @State var cpuScore = 0
    
    @State private var showAlert = false
    @State private var alertMessage = ""
    
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
            }            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("War Card Game"),
                    message: Text(alertMessage),
                    dismissButton: .default(Text("OK"), action: {
                        // Manually reset showAlert to false after dismissal
                        showAlert = false
                    })
                )
            }
            
        }
    }
    
    func deal() {
        // randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // randomize the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update the scores
        if playerCardValue > cpuCardValue {
            // add 1 to player score
            playerScore += 1
        }else if cpuCardValue > playerCardValue{
            // add 1 to cpu score
            cpuScore += 1
        }else{
            // Tie
            print("Game Tied")
            showAlertWithMessage(message: "Game tied!")
        }
    }
    
    // Function to show alert with a message
    func showAlertWithMessage(message: String) {
        alertMessage = message
        showAlert = true
    }
}

#Preview {
    ContentView()
}
