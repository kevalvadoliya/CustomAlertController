//
//  ContentView.swift
//  CustomAlertController
//
//  Created by Keval Vadoliya on 25/11/19.
//  Copyright © 2019 Keval Vadoliya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Title"), message: Text("Message"), primaryButton: .default(Text("OK")), secondaryButton: .cancel(Text("Cancel")))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
