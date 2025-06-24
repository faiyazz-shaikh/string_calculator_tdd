# String Calculator TDD

A simple string calculator built using Test-Driven Development in Dart.

## What it does

Takes a string of numbers and returns their sum:

```dart
calculator.add("1,2,3")      // Returns 6
calculator.add("1\n2,3")    // Returns 6 (handles newlines)
calculator.add("//;\n1;2")  // Returns 3 (custom delimiter)
calculator.add("")          // Returns 0 (empty string)
```

## Features

- Handles empty strings
- Supports comma-separated numbers
- Accepts newlines as delimiters
- Custom delimiters with `//[delimiter]\n` format
- Validates against negative numbers
- Shows all negative numbers in error message

## Running

```bash
# Run tests
dart test
```
