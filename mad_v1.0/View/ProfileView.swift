//
//  ProfileView.swift
//  mad_v1.0
//
//  Created by ilham risqi on 31/05/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
//                Image("fotoprofile")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 80, height: 80)
//                    .clipShape(Circle())
//                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
//                    .shadow(radius: 4)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(user.name)
                        .font(.title)
                        .bold()
                    
                    Text(user.email)
                        .font(.subheadline)
                }
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("About Me")
                    .font(.headline)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem ut tempus facilisis, odio leo commodo arcu, ut lacinia nunc massa sed risus.")
                    .font(.body)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        .foregroundColor(.black)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.userdummy)
    }
}
