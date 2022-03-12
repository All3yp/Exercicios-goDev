import Foundation

var pilhaDeNumeros = StructPilhaGenerica<Int>()
pilhaDeNumeros.push(1)

public func verifyPalindrome<T: StringProtocol>(_ word: T) -> Bool {
	if word.isEmpty || word.count == 1 {
		print("❌ Pass a valid word")
		return false
	}

	let word = word.lowercased()
		.components(separatedBy: .whitespacesAndNewlines).joined() // get spaces and new lines and join all phrase
		.components(separatedBy: .punctuationCharacters).joined() // get punctuation and ignore it and join all phrase

	print("Word: ",word) // print all word on phrase joined

	let arr = Array(word)
	print("Array: ",arr)

	let lastIndex = arr.count - 1
	for index in 0...lastIndex {
		let revIndex = lastIndex - index

		if arr[index] != arr[revIndex] {
			print("🚨 Is not a palindrome")
			return false
		}
	}

	print("✅ Is Palindrome")
	return true
}


func isPalindrome<T: StringProtocol>(_ word: T) -> String? {
	if word.isEmpty || word.count == 1 {
		return "❌ Pass a valid word"
	}

	let word = word.lowercased()
		.components(separatedBy: .whitespacesAndNewlines).joined()
		.components(separatedBy: .punctuationCharacters).joined()

	print("Word: ", word)

	let arr = Array(word)
	print("Array: ", arr)

	let lastIndex = arr.count - 1
	print("Last Index: ",lastIndex)

	for index in 0...lastIndex {
		let revIndex = lastIndex - index

		print("\nRev: \(revIndex)\n Index: \(index)")

		if arr[index] != arr[revIndex] {
			print("arr[revIndex] ",arr[index])
			print("arr[revIndex]",arr[revIndex])

			return "🚨 Is not a palindrome"
		}
	}

	return "✅ Is Palindrome"
}

isPalindrome("Sit on a potato pan, Otis")
isPalindrome("Ah. Satan sees Natasha.")
isPalindrome("Did Hannah see bees? Hannah did.")



verifyPalindrome("Won’t lovers revolt now?")
verifyPalindrome("abe")
verifyPalindrome("Borrow or rob?")
