//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Sami Samara on 3/10/24.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .font(.body)
            .bold()
            .padding(12)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(color)
            .foregroundStyle(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
    }
}

#Preview {
    CustomButtonView(title: "tap me", color: .red)
}
