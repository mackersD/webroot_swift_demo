# webroot_swift_demo

Welcome to my demo of introductory exposure to the Swift programming language.

## Prompt

This demo is in response to the following prompt:

> In Swift, write a function that:
>
> 1. Takes an arbitrary string as its first parameter.
> 2. Takes a sequence of non-repeating characters as its second parameter.
> 3. Returns how many times each of the characters from #2 was present in #1.

## Overview

The proposed solution leverages a function `countCharactersInString` that takes two strings as input. The first string is the string to be tested, and the second string is the string representing the sequence of characters to count. The function returns a dictionary with the keys as the individual characters that were counted, and the values as the count of that specific character.

## Assumptions

- For prompt item 2, a "sequence of non-repeating characters" is synonymous with a string of non-repeating characters.
- The character analysis is case-sensitive. (i.e. A count towards W is not the same as a count towards w.)
- It is acceptable that the order of count information is non-deterministic.
