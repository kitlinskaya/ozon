//
//  ProductDetailView.swift
//  OZON
//
//  Created by Macbook on 08.08.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
    
    var body: some View {
        VStack{
            ScrollView{
                Image("\(viewModel.product.imageURL)")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 360)
                Text("\(viewModel.product.title)")
                    .font(.custom("AvenirNext-bold", size: 25))
                    .foregroundColor(.white)
                HStack{
                    Text("\(viewModel.product.price) ₽")
                        .font(.custom("AvenirNext-bold", size: 25))
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color("PriceButtonColor"))
                        .cornerRadius(8)
                    Text("⭐️ \(viewModel.product.rating) \n \(viewModel.product.reviews) отзывов")
                        .font(.custom("AvenirNext- bold", size: 18))
                        .padding(7)
                        .foregroundColor(.white)
                        .background(Color("Grey"))
                    
                        .cornerRadius(8)
                    Spacer()
                }.padding(.horizontal)
                
                Text("\(viewModel.product.descript)")
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext- bold", size: 20))
                    .padding(.horizontal)
            }
            Button {
                print("Добавить в корзину")
            } label: {
                Text("В корзину")
                    .font(.custom("AvenirNext-bold", size: 22))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .font(.title3.bold())
                    .background(.blue)
                    .cornerRadius(12)
                
            }
        }.background(Color("BackgroundColor"))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(viewModel: ProductDetailViewModel(product: Product(id: "1",
                                                                             title: "Картина по номерам Шрек Мем, 40 х 40 см",
                                                                             imageURL: "Not Found",
                                                                             price: 1375, rating: 5, reviews: 12,
                                                                             descript: "Количество красок от 18 до 24. Картина раскрашивается без смешивания красок. В комплекте: натуральный хлопковый холст, баночки с акриловыми красками на водной основе, 2 кисти из качественного нейлона, схема раскашивания, инструкция.")))
    }
}
