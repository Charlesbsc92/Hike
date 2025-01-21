//
//  HikeDetail.swift
//  Hike
//
//  Created by Charles on 21/01/25.
//

import SwiftUI

struct HikeDetail: View {
    
    var hike:Hike
    @State private var zoomed:Bool = false
    
    var body: some View {
            VStack {
                Image(hike.photo)
                    .resizable()
                    .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                    .onTapGesture {
                        withAnimation {
                            zoomed.toggle()
                        }
                    }
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
                Spacer()
            }
            .navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HikeDetail(hike: Hike(name: "Manali", miles: 1836.7, photo: "manali"))
}
