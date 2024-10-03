//
//  ComentInfo.swift
//  ekklesia
//
//  Created by Goncalves Higino on 29/09/24.
//

import SwiftUI

struct ComentInfoView: View {
    var body: some View {
        HStack {
            Image(.paisagem)
                .resizable()
                .background(.black)
                .frame(width: 60, height: 60)
                .opacity(0.8)
                .clipShape(.circle)
            
            VStack(alignment: .leading) {
               
                HStack {
                    Text("Gonçalves Higino")
                        .foregroundStyle(Theme.accentColor)
                    
                    Spacer()

                    Text("Hoje")
                        .foregroundStyle(Theme.accentColor)
                       
                }
                
                Text("Glória à Deus, toda a honra e todo louvor! Em nome de Jesus.")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(Theme.accentColor)
                
            }.padding(.horizontal)

        }
    }
}

#Preview {
    ComentInfoView()
}
