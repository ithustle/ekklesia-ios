//
//  Testament.swift
//  ekklesia
//
//  Created by Goncalves Higino on 29/09/24.
//

import SwiftUI

struct TestamentView: View {
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 2)
    @State private var isShowing = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Testamento")
                        .font(.system(size: 30))
                        .foregroundStyle(Theme.accentColor)
                    
                    Spacer()
                    
                    Image(.paisagem)
                        .resizable()
                        .background(.black)
                        .frame(width: 60, height: 60)
                        .opacity(0.8)
                        .clipShape(.circle)
                }
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(1...14, id: \.self){ _ in
                            NavigationLink {
                                VersiculoView()
                                    .padding()
                            } label: {
                                CardTestamentView()
                            }
                        }
                    }
                }
            }.padding()
        }
    }
}   

#Preview {
    TestamentView()
}
