//
//  ProductDetailViewModel.swift
//  OZON
//
//  Created by Macbook on 08.08.2023.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    
    @Published var product: Product 
    
    init(product: Product){
        self.product = product
    }
}
