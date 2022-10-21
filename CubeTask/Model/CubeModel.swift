//
//  CubeModel.swift
//  CubeTask
//
//  Created by erge on 22.10.2022.
//

import Foundation
import SwiftUI

class CubeModel: Identifiable{
    
    var id = UUID()
    var color: Color = [Color("clrRed"), Color("clrDarkBlue"), Color("clrGreen")].randomElement()!
    var counter: Int = 0
    
    func raise(){
        switch color{
        case Color("clrRed"):
            counter += 3
        case Color("clrDarkBlue"):
            counter += 2
        case Color("clrGreen"):
            counter += 1
        default:
            break
        }
    }
}
