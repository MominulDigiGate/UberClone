//
//  LocationSearchResult.swift
//  UberClone
//
//  Created by Mac Mini 5 on 24/1/23.
//

import SwiftUI

struct LocationSearchResultView: View {
    let title: String
    let subTitle: String
    
    var body: some View {
        HStack{
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4){
                Text(title)
                    .font(.body)
                
                Text(subTitle)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                
                Divider()
            }
            
        }
        .padding(.leading, 8)
        .padding(.vertical, 8)
    }
}

struct LocationSearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultView(title: "City", subTitle: "Address")
    }
}
