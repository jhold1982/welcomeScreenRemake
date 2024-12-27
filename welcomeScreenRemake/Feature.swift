//
//  Feature.swift
//  welcomeScreenRemake
//
//  Created by Justin Hold on 12/27/24.
//

import Foundation

struct Feature: Decodable, Identifiable {
	var id = UUID()
	let title: String
	let description: String
	let image: String
}
