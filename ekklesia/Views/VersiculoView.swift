//
//  VersiculoView.swift
//  ekklesia
//
//  Created by Goncalves Higino on 29/09/24.
//

import SwiftUI

struct VersiculoView: View {
    
    @Environment(\.dismiss) private var dismiss
    let captulos = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,20]
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Provérbios")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundStyle(Theme.accentColor)
                        
                    Spacer()
                    
                    Button("Cancelar"){
                        dismiss()
                    }
                    
                }.padding(.horizontal)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 5) {
                        ForEach(captulos, id: \.self){ captulo in
                            NavigationLink {
                                ReadVersiculoView()
                            } label: {
                                Text("\(captulo)")
                                    .font(.title)
                                    .foregroundStyle(.white)
                                    .frame(width: 120, height: 100)
                                    .background(Theme.accentColor)
                                    .clipShape(.rect(cornerRadius: 5))
                            }
                        }
                    }
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    VersiculoView()
}
