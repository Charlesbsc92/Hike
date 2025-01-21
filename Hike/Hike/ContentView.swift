//
//  ContentView.swift
//  Hike
//
//  Created by Charles on 21/01/25.
//

import SwiftUI

struct ContentView: View {
    
    let hikes:[Hike] = [Hike(name: "Manali", miles: 1836.7, photo: "manali"),
                        Hike(name: "Munnar", miles: 188.5, photo: "munnar"),
                        Hike(name: "Dharmasala", miles: 1819.6, photo: "Dharamshala")]
    
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCell(hike: hike)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Hikes")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Hike.self) { hike in
                HikeDetail(hike: hike)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCell: View {
    
    let hike:Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
        .listRowSeparator(.hidden)
    }
}
