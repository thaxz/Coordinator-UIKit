//
//  OnboardingView.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import SwiftUI

struct OnboardingView: View {
    var doneRequested: () -> ()
    var body: some View {
        TabView{
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .tag(0)
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .tag(1)
            Image(systemName: "moon.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .tag(2)
            Button("Done") {
                doneRequested()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(doneRequested: {})
    }
}
