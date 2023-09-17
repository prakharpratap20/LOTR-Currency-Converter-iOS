//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by Prakhar Pratap on 16/09/23.
//

import SwiftUI

struct ExchangeRate: View {
    @State var leftImage: String
    @State var text: String
    @State var rightImage: String
    
    var body: some View {
        HStack {
            // left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // exchange rate text
            Text(text)
            
            // right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: "goldpenny", text: "1 Gold Penny = 4 Siver Pieces", rightImage: "silverpiece")
        .previewLayout(.sizeThatFits)
}
