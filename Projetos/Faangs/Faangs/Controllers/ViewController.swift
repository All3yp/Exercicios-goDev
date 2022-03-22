//
//  ViewController.swift
//  Faangs
//
//  Created by Alley Pereira on 21/03/22.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!

	let api = GetFaangService()

	private var faangs: [FaangModel] = [] {
		didSet {
			DispatchQueue.main.async { [weak self] in
				self?.tableView.reloadData()
			}
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		register()
		delegates()

		api.fetch { faangs in
			self.faangs = faangs ?? []
		}
	}
	

	private func register() {
		let nib = UINib(nibName: CustomTableViewCell.identifier, bundle: nil)
		tableView.register(nib, forCellReuseIdentifier: CustomTableViewCell.identifier)
	}

	private func delegates() {
		tableView.delegate = self
		tableView.dataSource = self
	}
}

extension ViewController: UITableViewDelegate {}

extension ViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return faangs.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }


		cell.configureCell(photo: faangs[indexPath.row].photo, name: faangs[indexPath.row].name, company: faangs[indexPath.row].company.name)
		return cell
	}


}
