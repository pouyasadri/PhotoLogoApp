//
//  ContentView.swift
//  PhotoLogoApp
//
//  Created by Pouya Sadri on 26/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack{
			LinearGradient(gradient: Gradient(colors: [Color(red: 40/255, green: 48/255, blue: 72/255), Color(red: 133/255, green: 147/255, blue: 152/255)]), startPoint: .top, endPoint: .bottom)
				.ignoresSafeArea()
			
			VStack{
				LogoView()
				
				Spacer()
					.frame(height: 100)
				
				Text("Made By Pouya Sadri")
					.font(.headline)
					.fontWeight(.light)
					.foregroundStyle(.secondary)
					.opacity(0.7)
			}
		}
    }
}

#Preview {
    ContentView()
}
