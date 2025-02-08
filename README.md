# NEXLANGSHELL (NLS)

NEXLANGSHELL (NLS) is a simple, interactive shell script that provides basic command handling and a unique startup animation. It demonstrates how to implement a minimal command-line interface with custom commands and animations using Bash scripting.

## Features

- **Custom Command Handling:**
  - `exit`: Exits the shell.
  - `list`: Lists files in the current directory.
  - `list A`: Lists all files, including hidden ones.
  - `list L`: Lists files with detailed information.
  - `list AL` or `list LA`: Lists all files, including hidden ones, with detailed information.
  - `dir <directory>`: Changes to the specified directory (e.g., `dir Documents`).
  - `wami`: Displays the current working directory.
  - Unknown commands are handled with an error message.

- **Startup Animation:**
  - A visually dynamic sequence that animates the shell's name.

## Usage

1. Clone the repository or copy the script to your local machine.
2. Save the script as `nls.sh`.
3. Make the script executable:
   ```bash
   chmod +x nls.sh
   ```
4. Run the script:
   ```bash
   ./nls.sh
   ```

## Commands

| Command            | Description                                                      |
|--------------------|------------------------------------------------------------------|
| `exit`             | Exits the shell.                                                |
| `list`             | Lists files in the current directory.                           |
| `list A`           | Lists all files, including hidden ones.                         |
| `list L`           | Lists files with detailed information.                          |
| `list AL` or `list LA` | Lists all files, including hidden ones, with detailed information. |
| `dir <directory>`  | Changes to the specified directory. Example: `dir Documents`.   |
| `wami`             | Displays the current working directory.                         |
| `cs`               | Clears the screen.                                              |
| Unknown commands   | Displays an error message indicating the command was not found. |

## Code Overview

### `verifyprompt` Function
This function processes user input and executes commands based on predefined patterns. It includes:
- Directory navigation using the `dir` command.
- File listing in various formats using `ls`.
- Current working directory display.
- Error handling for unrecognized commands.

### `startupmovie` Function
A fun animation sequence that progressively displays and clears parts of the shell's name ("NEXLANGSHELL"). It creates a visually engaging startup experience.

### Main Loop
The script continuously prompts the user for input using `read`, processes the input via the `verifyprompt` function, and repeats until the user exits.

## Contributing
Feel free to fork this repository, create new features, or suggest improvements. Contributions are welcome!

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

## Acknowledgments
- Inspired by the flexibility of Bash scripting.
- A simple demonstration of how custom command-line interfaces can be implemented.

