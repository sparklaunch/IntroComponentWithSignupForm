//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Background()
                    VStack {
                        Title(title: "Learn to code by watching others", subtitle: "See how experienced developers solve problems in real-time. Watching scripted tutorials is great. But understanding how developers think is invaluable.")
                            .padding(.horizontal, 20)
                        Spacer()
                            .frame(height: 50)
                        PromotionCard(tryPeriod: 7, monthlyFee: 20)
                        TrialForm()
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color("BackgroundColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
