//
//  LocationSearchView.swift
//  UberClone
//
//  Created by Mac Mini 5 on 24/1/23.
//

import SwiftUI

struct LocationSearchActionView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundColor(Color(.darkGray))
            
            Spacer()
        }
        .frame(
            width: UIScreen.main.bounds.width - 64,
            height: 50
        )
        .background(
        Rectangle()
            .fill(Color.white)
            .cornerRadius(50)
            .shadow(color: Color.red.opacity(0.3), radius: 10, x: 2, y: 2 )
        )
    }
}

struct LocationSearchActionView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchActionView()
    }
}
