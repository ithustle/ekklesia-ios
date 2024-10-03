//
//  ComentView.swift
//  ekklesia
//
//  Created by Goncalves Higino on 29/09/24.
//

import SwiftUI

struct ComentView: View {
    
    @State var textTitle = ""
    
    var body: some View {
        VStack {
            Text("Comentários")
                .font(.title)
                .foregroundStyle(Theme.accentColor)
                .padding(.top, 40)
            
            ComentInfoView()
            
            Spacer()
            
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 2)
                .foregroundStyle(Theme.accentColor)
            
            HStack {
                TextField("Comentar...", text: $textTitle)
                    .font(.title3)
                    .padding(.leading)
                
                Button {
                    
                } label: {
                    Text("Enviar")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(width: 130, height: 60)
                        .background(Theme.accentColor)
                        .clipShape(.rect(cornerRadius: 40))
                        .padding(.trailing)
                }
                
            }
            .overlay {
                RoundedRectangle(cornerRadius: 40)
                    .stroke()
                    .frame(height: 80)
            }
            .padding()
            
        }
    }
}

#Preview {
    ComentView()
}
