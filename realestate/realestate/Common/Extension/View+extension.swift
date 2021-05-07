//
//  View+extension.swift
//  realestate
//
//  Created by SENGHORT on 5/7/21.
//

import SwiftUI

extension View {
    
    func navigationBarColor(_ backgroundColor: Color?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
    
    
}
