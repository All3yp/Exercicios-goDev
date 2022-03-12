import Foundation

public func verifyPalindrome<T: StringProtocol>(_ word: T) -> Bool {
	if word.isEmpty || word.count == 1 {
		print("❌ Pass a valid word")
		return false
	}

	let word = word.lowercased()
		.components(separatedBy: .whitespacesAndNewlines).joined() // get spaces and new lines and join all phrase
		.components(separatedBy: .punctuationCharacters).joined() // get punctuation and ignore it and join all phrase

//	print("Word: ",word) // print all word on phrase joined

	let arr = Array(word)
//	print("Array: ",arr)

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
