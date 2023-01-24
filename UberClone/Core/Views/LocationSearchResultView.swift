//
//  LocationSearchResult.swift
//  UberClone
//
//  Created by Mac Mini 5 on 24/1/23.
//

import SwiftUI

struct LocationSearchResultView: View {
    var body: some View {
        HStack{
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 4){
                Text("US Bangla")
                    .font(.body)
                
                Text("US Bangla")
                    .font(.system(size: 15))
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
        LocationSearchResultView()
    }
}
