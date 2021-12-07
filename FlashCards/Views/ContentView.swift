//
//  ContentView.swift
//  FlashCards
//
//  Created by William Robert Harrington on 2021-12-07.
//

import SwiftUI

struct ContentView: View {
    
    
    // MARK: Stored properties
    @State var currentCard: Card = listOfCards.randomElement()!
    
    // MARK: Computed properties
    var body: some View {
        VStack(spacing: 25){
            
            // Output
            Text(currentCard.question)
                .font(.largeTitle)
                .bold()
                .padding()
            
            // Input
            Button(action: {
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
            .buttonStyle(.bordered)
            
            // Output
            Text(currentCard.answer)
                .font(.title)
                .bold()
            
            //Input
            Button(action: {
                currentCard = listOfCards.randomElement()!
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
