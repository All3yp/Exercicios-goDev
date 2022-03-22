//
//  FaangModel.swift
//  Faangs
//
//  Created by Alley Pereira on 21/03/22.
//

import Foundation

// MARK: - WelcomeElement
struct FaangModel: Codable {
	let id: Int
	let name: String
	let photo: String
	let company: Company
}

// MARK: - Company
struct Company: Codable {
	let name: String
}
