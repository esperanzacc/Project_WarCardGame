//
//  ContentView.swift
//  WarCardGame
//
//  Created by Esperanza on 2022-09-06.
//

import SwiftUI

struct ContentView: View {
  
  // State -> 1. change the data 2.get notify when data changed
  
  @State private var playerCard = "card5"
  @State private var cpuCard = "card9"
  @State private var playerScore = 0
  @State private var cpuScore = 0
  @State private var roundTime = 0
  @State private var showingAlert = false
  
    var body: some View {
      ZStack {
        Image("background").ignoresSafeArea()
        VStack {
          Spacer()
          Image("logo")
          Spacer()
          HStack {
            Spacer()
            Image(playerCard)
              .cornerRadius(10.0)
            Spacer()
            Image(cpuCard)
              .cornerRadius(10.0)
            Spacer()
          }
          Spacer()
          Button {
            
            // Generate a random number between 2 and 14
            let playerRand = Int.random(in: 2...14)
            let cpuRand = Int.random(in: 2...14)
            // Update the cards
            playerCard = "card" + String(playerRand)
            cpuCard = "card" + String(cpuRand)
            roundTime += 1
            
            // Update the score
            if playerRand > cpuRand {
              playerScore += 1
            } else if cpuRand > playerRand {
              cpuScore += 1
            }
            
            if roundTime >= 10 && (playerScore != cpuScore) {
              showingAlert = true
            }
          } label: {
            Image("dealbutton")
              .alert("Game Over!\n \(playerScore > cpuScore ? "Player wins the game!" : "Cpu wins the game!")", isPresented: $showingAlert) {
                Button("OK", role: .cancel) {}
              }
          }
          
          Spacer()
          
          HStack {
            Spacer()
            VStack {
              Text("Player")
                .font(.headline)
                .foregroundColor(Color.white)
                .padding(.bottom, 15.0)
              Text(String(playerScore))
                .font(.largeTitle)
                .foregroundColor(Color.white)
            }
            Spacer()
            VStack {
              Text("CPU")
                .font(.headline)
                .foregroundColor(Color.white)
                .padding(.bottom, 14.0)
              Text(String(cpuScore))
                .font(.largeTitle)
                .foregroundColor(Color.white)
            }
            Spacer()
          }
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
