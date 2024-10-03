//
//  ReadVersiculoView.swift
//  ekklesia
//
//  Created by Goncalves Higino on 29/09/24.
//

import SwiftUI

struct ReadVersiculoView: View {
    
    
    var body: some View {
        VStack {
            VStack {
                Text("Provérbios")
                    .font(.system(size: 35))
                    .foregroundStyle(Theme.accentColor)
                
                Text("13")
                    .font(.system(size: 60, weight: .bold))
                    .foregroundStyle(Theme.accentColor)
            }.padding(.top)
            
            
            ForEach(1...5, id: \.self){ _ in
                Text("1.Provérbios de Salomão: O filho sábio dá alegria ao pai; o filho tolo dá tristeza à mãe.")
                    .foregroundStyle(Theme.accentColor)
                    .font(.title3)
                    .padding(3)
            }
            
            Spacer()
            
            HStack {
                Circle()
                    .foregroundStyle(Theme.accentColor)
                    .frame(width: 70, height: 70)
                
                Spacer()
                
                Text("Provérbios 13")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundStyle(Theme.accentColor)
                
                Spacer()
                
                Circle()
                    .foregroundStyle(Theme.accentColor)
                    .frame(width: 70, height: 70)
            }.padding()
        }
    }
}

#Preview {
    ReadVersiculoView()
}

