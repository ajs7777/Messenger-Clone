//
//  ProfileView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    
    @StateObject var vm = ProfileViewModel()
    let user: User
    
    var body: some View {
        VStack{
            PhotosPicker(selection: $vm.selectedImage) {
                if let profileImage = vm.profileImage {
                    profileImage
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                } else {
                    Image(user.imageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                }
            }
            
            Text(user.fullName)
                .font(.title)
                .fontWeight(.bold)
        }
        .padding(.top, 20)
        
        List{
            Section {
                ForEach(SettingsOptionsViewModel.allCases) { option in
                    HStack(spacing: 15.0){
                        Image(systemName: option.imageName)
                            .resizable()
                            .frame(width: 23, height: 23)
                            .foregroundStyle(option.imageBackgroundColor)
                        Text(option.title)
                            .fontWeight(.regular)
                    }
                }
            }
            
            Section {
                Button("Logout") {
                    
                }
                Button("Delete Account") {
                    
                }
            }
            .foregroundStyle(.red)
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_DATA)
}
