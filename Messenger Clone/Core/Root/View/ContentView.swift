//
//  ContentView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ContentViewModel()
    
    var body: some View {
        Group {
            if vm.userSession !== nil {
                InboxView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
