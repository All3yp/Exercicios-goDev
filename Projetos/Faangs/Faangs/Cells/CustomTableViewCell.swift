//
//  CustomTableViewCell.swift
//  Faangs
//
//  Created by Alley Pereira on 21/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

	static let identifier = "CustomTableViewCell"

	@IBOutlet weak var photoImageView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var companyLabel: UILabel!

	override func awakeFromNib() {
        super.awakeFromNib()

		photoImageView.layer.cornerRadius = (photoImageView?.frame.size.width ?? 0.0) / 2
    }


	func configureCell(photo: String, name: String, company: String) {
		photoImageView.loadImage(from: photo)
		nameLabel.text = name
		companyLabel.text = company
	}
    
}
