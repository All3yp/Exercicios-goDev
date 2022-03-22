//
//  GetFaangService.swift
//  Faangs
//
//  Created by Alley Pereira on 21/03/22.
//

import Foundation

protocol GetFaangServiceProtocol {
	var network: ServiceProtocol { get }
	func fetch(_ completion: @escaping ([FaangModel]?) -> Void)
}

struct GetFaangService: GetFaangServiceProtocol {

	var network: ServiceProtocol = Service()

	func fetch(_ completion: @escaping ([FaangModel]?) -> Void) {

		let endpoint = "https://run.mocky.io/v3/f0c36709-84e2-4043-a0f0-3bec512f6c84"

		guard let url = URL(string: endpoint) else { return }

		network.get(url, of: [FaangModel].self) { result in
			switch result {
				case .success(let result):
					completion(result)
				case .failure:
					completion(nil)
			}
		}
	}

}
