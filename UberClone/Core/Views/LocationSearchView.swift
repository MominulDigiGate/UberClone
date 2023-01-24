//
//  LocationSearchView.swift
//  UberClone
//
//  Created by Mac Mini 5 on 24/1/23.
//

import SwiftUI

struct LocationSearchView: View {
    
    @State private var originText = ""
    @State private var destinationText = ""
    
    var body: some View {
        VStack{
            
            //header view
            HStack{
                VStack{
                    Circle()
                        .frame(width: 8)
                        .foregroundColor(Color(.systemGray2))
                    
                    Rectangle()
                        .frame(width: 2, height: 50)
                        .foregroundColor(Color(.systemGray2))
                    
                    Rectangle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(Color(.black))
                
                }
                
                VStack{
                    TextField("Current location", text: $originText)
                        .frame(height: 32)
                        .padding(.horizontal, 10)
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(5)
                        .padding(.trailing)
                    
                    TextField("Where to?", text: $destinationText)
                        .frame(height: 32)
                        .padding(.horizontal, 10)
                        .background(Color(.systemGray4))
                        .cornerRadius(5)
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            
            Divider()
                .padding(.vertical)
            

            //list view
            ScrollView()
            {
                VStack(alignment: .leading){
                    ForEach(0 ..< 20, id: \.self){ _ in
                        LocationSearchResultView()
                    }
                }
            }
            
            
        }
        .background(.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}
