//
//  Class.swift
//  doggo
//
//  Created by school on 9/30/22.
//

import Foundation


struct dog: Identifiable
{
    var health:Int
    var image:String
    let id = UUID()
}


struct bee: Identifiable
{
    var speed:Int
    var strenght:Int
    var damage:Int
    var image:String
    let id = UUID()
}
