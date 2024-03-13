//
//  ContentView.swift
//  CapFun
//
//  Created by Sami Samara on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = ""
    @State var capMode = 1
    private let pasteboard = UIPasteboard.general
    
    var body: some View {
        VStack {
            Spacer()
            if capMode == 1 {
                Text(userText.uppercased())
                    .font(.largeTitle)
            }
            
            if capMode == 2 {
                Text(userText.capitalized)
                    .font(.largeTitle)
            }
            
            if capMode == 3 {
                Text(userText.lowercased())
                    .font(.largeTitle)
            }
            
            Spacer()
            
            Button(action: {
                copyToClipboard()
            }) {
                CustomButtonView(title: "Copy", color: .orange)
            }
            
            HStack {
                Button(action: {
                    capMode = 1
                }) {
                    CustomButtonView(title: "ALL CAPS", color: .red)
                }
                Button(action: {
                    capMode = 2
                }) {
                    CustomButtonView(title: "First Letter", color: .green)
                }
                
                Button(action: {
                    capMode = 3
                }) {
                    CustomButtonView(title: "lowercase", color: .blue)
                }
            }
            
            TextField("Enter Text Here :)", text: $userText)
                .padding(.vertical)
        }
        .padding()
    }
    
    func copyToClipboard() {
        pasteboard.string = self.userText
        self.userText = ""
    }
}

#Preview {
    ContentView()
}
