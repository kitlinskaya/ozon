//
//  MainTabBar.swift
//  OZON
//
//  Created by Macbook on 07.08.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        
        TabView{
            
            NavigationView {
                MainPageView()
            }
            .tabItem {
                VStack{
                    Image(systemName: "house")
                    Text("Главная")
                }
            }
            CatalogueView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Каталог")
                    }
                }
            TravelView()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Travel")
                }
            CardView()
                .tabItem {
                    Image(systemName: "basket")
                    Text("Корзина")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "face.smiling")
                    Text("Мой Ozon")
                }
            
            
            
        }
        
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
