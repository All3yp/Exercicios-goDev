import Foundation

// ------------- Pilha como Array ---------------

/*
//var pilha: [Int] = []

func pop() -> Int? {
	//pilha.popLast()
	if pilha.isEmpty {
		return nil
	}

	// ler o ultimo elemento da pilha
	//pilha.last
	// [0, 1, 2, 3] 3 é o elemento de maior indice
	let tamanhoDaPilha = pilha.count
	let maiorIndice = tamanhoDaPilha - 1
	let ultimoElemento = pilha[maiorIndice]

	// remover o ultimo elemento da pilha
	//pilha.removeLast
	pilha.remove(at: maiorIndice)

	// retornar o ultimo elemento da pilha
	return ultimoElemento
}

func push(_ item: Int) {
	pilha.append(item)
}

pop()
push(5)
 */

//---------------- Pilha como Classe -------------------

public class ClassePilha {

	private var items: [Int] = []

	public init() { }

	public func pop() -> Int? {
		//pilha.popLast()
		if items.isEmpty {
			return nil
		}

		// ler o ultimo elemento da pilha
		//pilha.last
		// [0, 1, 2, 3] 3 é o elemento de maior indice
		let tamanhoDaPilha = items.count
		let maiorIndice = tamanhoDaPilha - 1
		let ultimoElemento = items[maiorIndice]

		// remover o ultimo elemento da pilha
		//pilha.removeLast
		items.remove(at: maiorIndice)

		// retornar o ultimo elemento da pilha
		return ultimoElemento
	}

	public func push(_ item: Int) {
		items.append(item)
	}

}

//let stackObject = ClassePilha()
//stackObject.push(1)

//---------------- Pilha como Struct -------------------

public struct StructPilha {

	private var items: [Int] = []

	public init() { }

	public mutating func pop() -> Int? {
		//pilha.popLast()
		if items.isEmpty {
			return nil
		}

		// ler o ultimo elemento da pilha
		//pilha.last
		// [0, 1, 2, 3] 3 é o elemento de maior indice
		let tamanhoDaPilha = items.count
		let maiorIndice = tamanhoDaPilha - 1
		let ultimoElemento = items[maiorIndice]

		// remover o ultimo elemento da pilha
		//pilha.removeLast
		items.remove(at: maiorIndice)

		// retornar o ultimo elemento da pilha
		return ultimoElemento
	}

	public mutating func push(_ item: Int) {
		items.append(item)
	}
}

//---------------- Pilha Generica -------------------

public struct StructPilhaGenerica<Element> {

	private var items: [Element] = []

	public init() { }

	public mutating func pop() -> Element? {
		//pilha.popLast()
		if items.isEmpty {
			return nil
		}

		// ler o ultimo elemento da pilha
		//pilha.last
		// [0, 1, 2, 3] 3 é o elemento de maior indice
		let tamanhoDaPilha = items.count
		let maiorIndice = tamanhoDaPilha - 1
		let ultimoElemento = items[maiorIndice]

		// remover o ultimo elemento da pilha
		//pilha.removeLast
		items.remove(at: maiorIndice)

		// retornar o ultimo elemento da pilha
		return ultimoElemento
	}

	public mutating func push(_ item: Element) {
		items.append(item)
	}
}

//var pilhaDeInt = StructPilhaGenerica<Int>()
//pilhaDeInt.push(9)

//var pilhaDeChar = StructPilhaGenerica<Character>()
//pilhaDeChar.push("A")
