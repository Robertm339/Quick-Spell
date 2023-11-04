//
//  LetterView.swift
//  QuickSpell
//
//  Created by Robert Martinez on 11/3/22.
//

import SwiftUI

struct LetterView: View {
    @ScaledMetric(relativeTo: .largeTitle) var size = 60
    
    let letter: Letter
    var color: Color
    var onTap: (Letter) -> Void
    
    var body: some View {
        Button {
            onTap(letter)
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(color.gradient)
                    .frame(height: size)
                    .frame(minWidth: size / 2, maxWidth: size)
                    .shadow(radius: 3)
                
                Text(letter.character)
                    .foregroundColor(.black.opacity(0.65))
                    .font(.largeTitle.bold())
            }
        }
        .accessibilityLabel(letter.character.lowercased())
    }
}

struct LetterView_Previews: PreviewProvider {
    static var previews: some View {
        LetterView(letter: Letter(), color: .green) { _ in
            
        }
    }
}
