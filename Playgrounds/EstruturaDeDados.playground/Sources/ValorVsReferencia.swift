import UIKit

//------- Valor vs Referencia -------------

struct Model {

	var pilha: StructPilha = StructPilha()

	init() {
		pilha.push(1)
		pilha.push(2)
	}
}

class ViewController: UIViewController {

	var tableView: UITableView!

	var model: Model = Model() {
		didSet {
			tableView.reloadData()
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		model.pilha.push(5)  // se Model for struct, roda o didSet que faz o reloadDate
	}
}
