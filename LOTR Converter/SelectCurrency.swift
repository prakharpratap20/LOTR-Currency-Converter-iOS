//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Prakhar Pratap on 16/09/23.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    
    
    
    var body: some View {
        ZStack {
            // background parchment image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                // text
                Text("Select the currency you are starting with: ")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // currency icons
                IconGrid(currency: $leftCurrency)
                
                
                // text
                Text("Select the currency you would like to convert to: ")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // currency icons
                IconGrid(currency: $rightCurrency)
                
                // done button
                Button("Done") {
                    dismiss()
                }
                .font(.headline)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
                
            }
        }
    }
}

#Preview {
    SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
}
