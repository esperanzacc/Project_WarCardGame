//
//  ContentView.swift
//  WarCardGame
//
//  Created by Esperanza on 2022-09-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        Spacer()
        Image("logo")
        Spacer()
        HStack(spacing: 80.0) {
          Image("card3")
            .cornerRadius(10.0)
          Image("card4")
            .cornerRadius(10.0)
        }
        Spacer()
          
        Image("dealbutton")
        Spacer()
        VStack {
          HStack(spacing: 20.0) {
            Text("Player")
              
              .font(.title)
            Text("CPU")
  
              .font(.title)
          }
          HStack(spacing: 20.0) {
            Text("0")
        
            Text("0")
            
          }

        }
        Spacer()
        
        
      }
      .background(Color.green)
      .foregroundColor(Color.white)
      .padding(.all)
       

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
