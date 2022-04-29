//
//  AuthSwiftUI.swift
//  Investor
//
//  Created by Алексей Каземиров on 4/30/22.
//

import SwiftUI

struct AuthSwiftUI: View {
    var body: some View {
        VStack {
            Text("Sign In")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .padding([.top,.bottom],20)
            VStack {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                    }
                }
            }
        }
    }
}

struct AuthSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        AuthSwiftUI()
    }
}
