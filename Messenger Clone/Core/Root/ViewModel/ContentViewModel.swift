//
//  ContentViewModel.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 03/01/25.
//

import Firebase
import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject {
    @Published var userSession : FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setUpSubscribers()
    }
    
    private func setUpSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        } .store(in: &cancellables)
    }
}
