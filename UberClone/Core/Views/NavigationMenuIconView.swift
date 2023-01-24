//
//  NavigationMenuIconView.swift
//  UberClone
//
//  Created by Mac Mini 5 on 24/1/23.
//

import SwiftUI

struct NavigationMenuIconView: View {
    var body: some View {
        Button{
            
        } label: {
            Image(systemName: "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: Color.red.opacity(0.3), radius: 10, x: 2, y: 2 )
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct NavigationMenuIconView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMenuIconView()
    }
}
