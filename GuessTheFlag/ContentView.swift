//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Akinduro Oluwasegun on 11/10/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.gray, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                Button("Button 1") {
                    showingAlert = true
                }.alert("Important Message", isPresented: $showingAlert) {
                    Button("OK") {
                    }
                    Button("Cancel") {
                    }
                } message: {
                    Text("This is an important message")
                }
                
                .buttonStyle(.bordered)
                Button("Button 2", role: .destructive) { }
                    .buttonStyle(.bordered)
                Button("Button 3") { }
                    .buttonStyle(.borderedProminent)
                Button("Button 4", role: .destructive) { }
                    .buttonStyle(.borderedProminent)
                Button {
                    print("Button was tapped")
                } label: {
                    Text("Tap me!")
                        .padding()
                        .foregroundStyle(.white.gradient)
                        .background(.red.gradient)
                }
                Button {
                    print("Edit button was tapped")
                } label: {
                    HStack {
                        Image(systemName: "pencil")
                        Text("Edit me!")
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                .buttonStyle(.bordered)
            }
            Spacer()
            Spacer()
            
        }
        
        
    }
    
}

#Preview {
    ContentView()
}
