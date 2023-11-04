//
//  AnimatingNumberView.swift
//  QuickSpell
//
//  Created by Robert Martinez on 1/19/23.
//

import SwiftUI

struct AnimatingNumberView: View, Animatable {
    var title: String
    var value: Int
    
    var animatableData: Double {
        get { Double(value) }
        set { value = Int(newValue) }
    }
    
    var body: some View {
        Text("\(title): \(value)")
    }
}

struct AnimatingNumberView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingNumberView(title: "Score", value: 0)
    }
}
