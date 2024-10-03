//
//  CardTestamentView.swift
//  ekklesia
//
//  Created by Goncalves Higino on 29/09/24.
//

import SwiftUI

struct CardTestamentView: View {
    var body: some View {
        VStack {
            Text("Levítico")
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .bold))
            
            Text("Capítulo 27")
                .foregroundStyle(.white.opacity(0.8))
        }
        .frame(width: 170,height: 90)
        .background(Theme.accentColor)
        .clipShape(.rect(cornerRadius: 5))
        .padding(.horizontal)
    }
}

#Preview {
    CardTestamentView()
}
