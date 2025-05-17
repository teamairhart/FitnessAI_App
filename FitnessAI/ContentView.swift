//
//  ContentView.swift
//  FitnessAI
//
//  Created by Jonathan Airhart on 5/16/25.
//

import SwiftUI
import SnapKit          // ← NEW: should autocomplete and compile

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            // Tiny SnapKit test: create a dummy view & constrain its height
            let view = UIView()
            view.snp.makeConstraints { make in
                make.height.equalTo(10)
            }
            print("SnapKit is working ✅")
        }
    }
}
