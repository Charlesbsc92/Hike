//
//  Untitled.swift
//  Hike
//
//  Created by Charles on 21/01/25.
//

import Foundation

struct Hike:Identifiable,Hashable {
    let id = UUID()
    var name:String
    var miles:Double
    var photo:String
}
