//
//  ContentView.swift
//  welcomeScreenRemake
//
//  Created by Justin Hold on 12/27/24.
//

import SwiftUI

struct ContentView: View {
	
	// MARK: - Properties
	@Environment(\.dismiss) var dismiss
	
	let accentColor = (Color(red: 0.9, green: 0, blue: 0, opacity: 1))
	
	let features = [
		Feature(
			title: "Great feature! Wow.",
			description: "This one is great. You're going to love using it.",
			image: "pencil"
		),
		
		Feature(
			title: "Second Feature",
			description: "This one is way better than the first.",
			image: "sun.max"
		),
		
		Feature(
			title: "Last but not least...The 3rd feature",
			description: "In conclusion...",
			image: "keyboard"
		)
	]
	
	// MARK: - View Body
    var body: some View {
		VStack(spacing: 20) {
			ScrollView {
				VStack(spacing: 20) {
					
					Image(systemName: "unitopia")
						.frame(width: 44, height: 44)
						.cornerRadius(10)
					
					Spacer()
					Text("Welcome to \(Text("AwesomeApp").foregroundStyle(Color(accentColor)))")
						.multilineTextAlignment(.center)
						.font(.largeTitle.bold())
					
					Spacer()
					ForEach(features) { feature in
						HStack {
							Image(systemName: feature.image)
								.frame(width: 44)
								.font(.title)
								.foregroundStyle(.blue)
								.accessibilityHidden(true)
							
							VStack(alignment: .leading) {
								Text(feature.title)
									.font(.headline)
								
								Text(feature.description)
									.foregroundStyle(.secondary)
							}
							.accessibilityElement(children: .combine)
						}
						.frame(maxWidth: .infinity, alignment: .leading)
					}
				}
			}
			
			Text("Any important small print here.")
				.font(.footnote)
				.foregroundStyle(.secondary)
			
			Button("Close") {
				dismiss()
			}
			.frame(maxWidth: .infinity, minHeight: 44)
			.background(Color.blue)
			.foregroundStyle(.white)
			.clipShape(Capsule())
        }
        .padding()
    }
	
	// MARK: - Functions
	
}

#Preview {
    ContentView()
}
