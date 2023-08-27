//
//  FirstDetailView.swift
//  CoordinatorUIKit
//
//  Created by thaxz on 27/08/23.
//

import SwiftUI

struct FirstDetailView: View {
    @ObservedObject var vm: FirstTabViewModel
    var body: some View {
        VStack {
            Text("First Detail using SwiftUI")
            TextField("Name", text: $vm.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Email", text: $vm.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDetailView(vm: FirstTabViewModel())
    }
}
