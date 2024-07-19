//
//  ContentView.swift
//  FirstiOS
//
//  Created by Kody Chik on 2024-07-19.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background")
               
            VStack {
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 50)
                
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
                } label: {
                    Image("dealbutton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                        

                }.padding(.horizontal, 70)
                
                
                Spacer()

                HStack {
                    Spacer()

                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()

                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
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
        var playerValue = Int.random(in: 2...14)
        var cpuValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        
        if (playerValue > cpuValue) {
            playerScore += 1
        }
        else if playerValue < cpuValue {
            cpuScore += 1
        }
        
        
    }
    

}

#Preview {
    ContentView()
}
