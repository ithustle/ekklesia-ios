//
//  ContentView.swift
//  ekklesia
//
//  Created by Célio Garcia on 25/09/24.
//

import SwiftUI

struct HomeView: View {
    
    
    @State private var showingComent = false
    
    var body: some View {
        ZStack {
            Theme.background
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    
                    Text("Hoje")
                        .font(.system(size: 30))
                        .foregroundStyle(Theme.accentColor)
                    
                    Text("Comunidade")
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    Image(.paisagem)
                        .resizable()
                        .background(.black)
                        .frame(width: 60, height: 60)
                        .opacity(0.8)
                        .clipShape(.circle)
                }
                
                
                Text("Missa")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(Theme.accentColor)
                
                CardMissaView()
                
                Text("Versículo do dia")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(Theme.accentColor)
                
                CardVerDiaView(showingComent: $showingComent)
            }
            .padding()
            .sheet(isPresented: $showingComent) {
                ComentView(textTitle: "")
            }
        }
    }
}

#Preview {
    HomeView()
}
