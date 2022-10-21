//
//  CubeService.swift
//  CubeTask
//
//  Created by erge on 22.10.2022.
//

import Foundation
import SwiftUI

class CubeService {
    static let shared = CubeService()
    var cubeList: [CubeModel] = (1...300).map { _ in CubeModel()}
    
    private init(){}
    
    func raiseAll(){
        for cube in cubeList{
            switch cube.color{
            case Color("clrRed"):
                cube.counter += 3
            case Color("clrDarkBlue"):
                cube.counter += 2
            case Color("clrGreen"):
                cube.counter += 1
            default:
                break
            }
        }
    }
}
