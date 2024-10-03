//
//  TodayView.swift
//  ekklesia
//
//  Created by Goncalves Higino on 01/10/24.
//

import SwiftUI

struct TodayView: View {
    @Binding var showingComent: Bool
    
    var body: some View {
        VStack {
            Text("Missa")
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Theme.accentColor)
            
            CardMissaView()
            
            Text("Versículo do dia")
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Theme.accentColor)
            
            CardVerDiaView(showingComent: $showingComent)
        }
    }
}

#Preview {
    TodayView(showingComent: .constant(false))
}
