//
//  CardMissa.swift
//  ekklesia
//
//  Created by Goncalves Higino on 29/09/24.
//

import SwiftUI

struct CardMissaView: View {
    var body: some View {
        VStack {
            ZStack {
                Image(.paisagem)
                    .resizable()
                    .clipShape(.rect(cornerRadius: 10))
                    .background(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .opacity(0.8)
                
                VStack {
                    
                    VStack {
                        Text("João")
                        Text("20:19-23")
                    }
                    .foregroundStyle(.white)
                    .font(.system(size: 30, weight: .semibold))
                    
                    
                    
                    HStack {
                        VStack {
                            Image(systemName: "heart")
                            Text("23")
                        }
                        .foregroundStyle(.white)
                        .font(.system(size: 20, weight: .semibold))
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "message")
                            Text("23")
                        }
                        .foregroundStyle(.white)
                        .font(.system(size: 20, weight: .semibold))
                    }
                    .padding(.horizontal, 40)
                    .padding(.top)
                }
                
            }
        }
    }
}

#Preview {
    CardMissaView()
}
