//
//  ServiceCell.swift
//  OZON
//
//  Created by Macbook on 07.08.2023.
//

import SwiftUI

struct ServiceCell: View {
    
    var service: Service
    
    var body: some View {
        VStack{
            Image("\(service.image)")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(maxWidth: screen.width * 0.14)
                .clipped()
                .cornerRadius(15)
            Text(service.name)
            
        }.frame(width: screen.width * 0.18, height: screen.width * 0.25, alignment: .top)
            .font(.custom("AvenirNext-bold", size: 10))
            .foregroundColor(.white)
        
        
        
    }
}

struct ServiceCell_Previews: PreviewProvider {
    static var previews: some View {
        ServiceCell(service: Service(id: "2", name: "Билеты, Отели, Туры", image: "OzonTravel"))
    }
}
