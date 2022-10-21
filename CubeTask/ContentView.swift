//
//  ContentView.swift
//  CubeTask
//
//  Created by erge on 22.10.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var cubeService = CubeService.shared
    @State var cubeList: [CubeModel] = []
    var columns = Array(repeating: GridItem(.flexible(), spacing: 5), count: 5)
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack{
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 5) {
                        
                        Button {
                            cubeService.raiseAll()
                            cubeList = []
                            cubeList = cubeService.cubeList
                        } label: {
                            Text("Add")
                        } //  MARK: - ADD_BUTTON
                        
                        ForEach($cubeList) { $cube in
                            CubeView(cube: $cube)
                                .onTapGesture {
                                    cube.raise()
                                    cubeList = []
                                    cubeList = cubeService.cubeList
                                }
                        }  //  MARK: - FOREACH
                    }  //  MARK: - LAZYVGRID
                } //  MARK: - SCROLLVIEW
                .padding()
            } //  MARK: - CSTACK
        } //  MARK: - ZSTACK
        .onAppear{
            self.cubeList = cubeService.cubeList
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
