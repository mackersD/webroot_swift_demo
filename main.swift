func countCharactersInString(_ inputString: String, _ charString: String) -> [Character: Int] {
  //store instance counts in dictionary
  var instanceCounts: [Character: Int] = [:]

  //convert inputs to arrays
  let inputCharacters = Array(inputString)
  let charsToCount = Array(charString)

  //initialize all characters to count as 0
  for charToCount in charsToCount {
    instanceCounts[charToCount] = 0
  }

  //loop through each character in the input string
  for inputChar in inputCharacters {
    //if the character is countable, increment its count
    if let instanceCount = instanceCounts[inputChar]{
      instanceCounts[inputChar] = instanceCount + 1
    }
  }

  return instanceCounts
}

//displays the count of each character
func displayCharacterCounts(_ charCounts: [Character: Int]) {  
  for (char, count) in charCounts {
    print("The character \(char) appears \(count) time(s).")
  }
  print("\n")
}

//test output
print("Testing \"Hello, world\" with \"alow\"")
displayCharacterCounts(countCharactersInString("Hello, world", "alow"))

print("Testing \"A quick brown fox jumps over the lazy dog.\" with \"abcdefghijklmnopqrstuvwxyz\"")
displayCharacterCounts(countCharactersInString("A quick brown fox jumps over the lazy dog.", "abcdefghijklmnopqrstuvwxyz"))

print("Testing \"Heres a tab: \t\" with \"\t\"")
displayCharacterCounts(countCharactersInString("Heres a tab: \t", "\t"))

print("Testing \"Heres a new line: \n\" with \"\n\"")
displayCharacterCounts(countCharactersInString("Heres a new line: \n", "\n"))