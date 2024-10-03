//
//  CardVerDiaView.swift
//  ekklesia
//
//  Created by Goncalves Higino on 29/09/24.
//

import SwiftUI

struct CardVerDiaView: View {
    
    @Binding var showingComent: Bool
    
    var body: some View {
        VStack {
            ZStack {
                Image(.paisagem)
                    .resizable()
                    .clipShape(.rect(cornerRadius: 10))
                    .background(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 250)
                    .opacity(0.8)
                
                
                VStack {
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Versículo do dia")
                                .foregroundStyle(.white)
                            
                            Text("Mateus 50: 10")
                                .foregroundStyle(.white)
                                .font(.system(size: 20, weight: .semibold))
                        }
                        
                        Spacer()
                    }
                    .padding()
                    
                    Spacer()
                   
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
                        
                        Button {
                            showingComent.toggle()
                        } label: {
                            VStack {
                                Image(systemName: "message")
                                Text("23")
                            }
                            .foregroundStyle(.white)
                            .font(.system(size: 20, weight: .semibold))
                        }
                    }
                    .padding(.horizontal, 40)
                    .padding(.top)
                    .padding(.bottom)
                }
                
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    CardVerDiaView(showingComent: .constant(false))
}
