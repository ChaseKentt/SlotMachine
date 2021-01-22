//
//  ContentView.swift
//  SlotMachine
//
//  Created by Chase Kent on 1/22/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var slot0 = "img3"
    @State private var slot1 = "img3"
    @State private var slot2 = "img3"
    
    var body: some View {
        ZStack{
            Image("Background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("* Test your luck *")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Spacer()
                Text("Credits: " + String(credits))
                    .font(.title2)
                Spacer()
                
                HStack{
                    Spacer()
                    Image(slot0)
                        .padding(.leading)
                    Spacer()
                    Image(slot1)
                    Spacer()
                    Image(slot2)
                        .padding(.trailing)
                    Spacer()
                }
                
                Spacer()
                Button(action: {
                    
                    let slot0Rand = Int.random(in: 0...3)
                    let slot1Rand = Int.random(in: 0...3)
                    let slot2Rand = Int.random(in: 0...3)
                    
                    slot0 = "img" + String(slot0Rand)
                    slot1 = "img" + String(slot1Rand)
                    slot2 = "img" + String(slot2Rand)
                    
                    if(slot0Rand == slot1Rand && slot1Rand == slot2Rand)
                    {
                        credits += 45
                    }
                    else
                    {
                        credits -= 5
                    }
                    
                }, label: {
                    Image("Button")
                })
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
