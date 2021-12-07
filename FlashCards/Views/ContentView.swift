//
//  ContentView.swift
//  FlashCards
//
//  Created by William Robert Harrington on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    
    // MARK: Stored properties
    var currentCard: Card = listOfCards.randomElement()!
    
    var body: some View {
        VStack(spacing: 25){
            
            Text("What is the \"powerhouse\" of the cell")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
            .buttonStyle(.bordered)
            
            Text("Mitocondria")
                .font(.title)
                .bold()
            
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Another")
            })
                .buttonStyle(.bordered)
            
            Spacer()
            
                        
        }
        .navigationTitle("Flash Cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
