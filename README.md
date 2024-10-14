# Jsonparser

A powerful command-line tool for parsing, querying, and displaying JSON data with various options.

## Installation

You can install `jsonparser` using Homebrew. First, tap the repository:

```bash
brew tap davidhoo/homebrew-jsonparser
```

Then, install the tool:

```bash
brew install jsonparser
```

## Usage

After installation, you can use the `jp` command to access the tool. For example, to see the help information, run:

```bash
jp --help
```

### Examples

1. **Parse a JSON file**:
   To parse a JSON file and display its contents:
   ```bash
   jp example.json
   ```

2. **Handle errors gracefully**:
   If the JSON is invalid, the tool will output an error message:
   ```bash
   jp invalid.json
   ```

3. **Test with valid JSON**:
   You can create a valid JSON file and test it:
   ```bash
   echo '{"key": "value"}' > test.json
   jp test.json
   ```

4. **Test with invalid JSON**:
   If you want to see how the tool handles errors, you can create an invalid JSON file:
   ```bash
   echo '{"key": "value"' > invalid.json
   jp invalid.json
   ```

## Features

- Parse JSON data from files or standard input.
- Display JSON data in a human-readable format.
- Handle errors for invalid JSON gracefully.

## Contributing

If you would like to contribute to this project, please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

