//
//  HomeView.swift
//  UberClone
//
//  Created by Mac Mini 5 on 24/1/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack (alignment: .top){
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            if showLocationSearchView{
                LocationSearchView()
            }else {
                LocationSearchActionView()
                    .padding(.top, 72)
                    .onTapGesture {
                        showLocationSearchView.toggle()
                    }
            }
            
            NavigationMenuIconView()
                .padding(.leading, 20)
                .padding(.top, 15)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
