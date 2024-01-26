//
//  LogoView.swift
//  PhotoLogoApp
//
//  Created by Pouya Sadri on 26/01/2024.
//

import SwiftUI
//MARK: - Logo view
struct LogoView: View {
	
	@State private var isAnimating = false
	var body: some View {
		ZStack{
			RoundedRectangle(cornerRadius: 25)
				.frame(width: 170,height: 170)
				.foregroundStyle(.white)
				.shadow(radius: 3.5)
			
			ForEach(Array(zip(colors, degrees)),id : \.0){ color, degree in
				RoundedRectView(color: color, rotationDegree: isAnimating ? degree : 0)
			}
		}
		.scaleEffect(2)
		.onAppear{
			isAnimating.toggle()
		}
    }
	
	private let colors : [Color] = [.blue, .purple, .pink, .red, .orange, .yellow, Color(red: 0.2, green: 1, blue: 0.3), .green]
	private let degrees : [Double] = [0, 45, 90, 135, 180, 230, 270, 315]
}

#Preview {
    LogoView()
}

//MARK: - RoundedRect view
struct RoundedRectView : View {
	var color : Color
	var rotationDegree : Double
	var body: some View {
		Capsule()
			.offset(y: 38)
			.frame(width: 50,height: 70,alignment: .center)
			.opacity(0.7)
			.foregroundStyle(color)
			.rotationEffect(.degrees(rotationDegree))
			.animation(Animation.easeInOut(duration: 1.5).delay(1).repeatForever(autoreverses: true),value: rotationDegree)
	}
}
