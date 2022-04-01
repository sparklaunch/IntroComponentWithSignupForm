//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Background()
            VStack {
                Title(title: "Learn to code by watching others", subtitle: "See how experienced developers solve problems in real-time. Watching scripted tutorials is great. But understanding how developers think is invaluable.")
                    .padding(.horizontal, 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
