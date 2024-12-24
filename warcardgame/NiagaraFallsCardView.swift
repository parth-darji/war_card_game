//
//  NiagaraFallsCardView.swift
//  warcardgame
//
//  Created by Parth Darji on 12/24/24.
//

import SwiftUI

struct NiagaraFallsCardView: View {
    var body: some View {
        ZStack{
            Color(.systemMint).ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Image("niagara_falls").resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                
                HStack{
                    Text("Niagara Falls").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.black)
                    
                    Spacer()
                    
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 561)")
                    }.foregroundColor(.orange).font(.caption)
                }
                
                
                
                Text("Come visit the falls for an experience of a lifetime.").font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/).fontWeight(.bold).foregroundColor(Color.black)
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray).font(.caption)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
}
