//
//  CubeView.swift
//  CubeTask
//
//  Created by erge on 22.10.2022.
//

import SwiftUI

struct CubeView: View {
    // MARK: - PROPERTIES
    @Binding var cube: CubeModel
    
    // MARK: - BODY
    var body: some View {
        GeometryReader{ reader in
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Text("\(cube.counter)")
                        .font(.title2.bold())
                        .padding(.horizontal,5)
                    
                }
            }  //  MARK: - VSTACK
            .frame(width: reader.size.width, height: reader.size.height)
            .background(cube.color)
            .cornerRadius(10)
        } //  MARK: - GEOMETRYREADER
        .frame(height: 100)
    }
}
