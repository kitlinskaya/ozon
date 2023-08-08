//
//  SearchBar.swift
//  OZON
//
//  Created by Macbook on 07.08.2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String // Привязываем searchText
    
    var body: some View {
        HStack {
            TextField("🔍 Искать на Ozon", text: $searchText)
                .padding(8)
                .foregroundColor(.white)
                .padding(.horizontal, 25)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("Grey"), lineWidth: 1))
                .padding(.horizontal)
            
            
        }
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
    }
}
