//
//  ProductCell.swift
//  OZON
//
//  Created by Macbook on 07.08.2023.
//

import SwiftUI

struct ProductCell: View {
    var product: Product
    
    var body: some View {
        
        VStack{
            Image("\(product.imageURL)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.45)
                .clipped()
                .cornerRadius(12)
            VStack{
                HStack{
                    Text("\(product.price) ₽")
                        .font(.custom("AvenirNext-bold", size: 17))
                        .padding(5)
                        .foregroundColor(.white)
                        .background(Color("PriceButtonColor"))
                        .cornerRadius(8)
                    Spacer()
                }
                Text(product.title)
                    .font(.custom("AvenirNext-bold", size: 15))
                    .foregroundColor(.white)
                    .padding(.vertical, 2)
                
                HStack{
                    Text("⭐️ \(product.rating)")
                        .foregroundColor(.white)
                    Text("💬 \(product.reviews)")
                        .foregroundColor(.white)
                    Spacer()
                }.font(.custom("AvenirNext- regular", size: 15))
                
            }
        }.frame(width: screen.width * 0.45, height: screen.width * 0.5, alignment: .center)
            .padding(.vertical, 50)
            .padding(.horizontal, 10)
        
        
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1",
                                     title: "Картина по номерам Шрек Мем, 40 х 40 см",
                                     imageURL: "Not Found",
                                     price: 1375, rating: 5, reviews: 12,
                                     descript: "Количество красок от 18 до 24. Картина раскрашивается без смешивания красок. В комплекте: натуральный хлопковый холст, баночки с акриловыми красками на водной основе, 2 кисти из качественного нейлона, схема раскашивания, инструкция."))
    }
}
