//
//  ContentView.swift
//  OZON
//
//  Created by Macbook on 07.08.2023.
//

import SwiftUI


struct MainPageView: View {
    
    let layout = [GridItem(.adaptive(minimum: screen.width / 2.2))]
    @State private var searchText = ""
    var filteredProducts: [Product] {
        if searchText.isEmpty {
            return MainPageViewModel.shared.products
        } else {
            return MainPageViewModel.shared.products.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        VStack{
            SearchBar(searchText: $searchText)
                .padding(.horizontal)
                .padding(.vertical, 8)
            ScrollView(.vertical, showsIndicators: false) {
                Image("AddBanner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: screen.width * 0.8)
                    .clipped()
                    .cornerRadius(12)
                //скролл с сервисами
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layout, spacing: 8) {
                        ForEach(MainPageViewModel.shared.services, id: \.id) { item in
                            ServiceCell(service: item)
                        }
                    }.padding(6)
                }
                Section(header:
                            Text("Возможно, вам понравится")
                    .font(.custom("AvenirNext-bold", size: 20))
                    .foregroundColor(.white) // Изменение цвета текста
                    .padding(.top, 10)
                    .padding(.bottom, 5)
                ) {
                    ScrollView(.vertical, showsIndicators: false)
                    {
                        LazyVGrid(columns: layout, spacing: 8) {
                            ForEach(filteredProducts, id: \.id) { item in
                                NavigationLink {
                                    let viewModel = ProductDetailViewModel(product: item)
                                    ProductDetailView(viewModel: viewModel)
                                } label: {
                                    ProductCell(product: item)
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                }
            }
            
        }.background(Color("BackgroundColor"))
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
