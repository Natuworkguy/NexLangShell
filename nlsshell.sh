#!/bin/bash

verifyprompt() {
    local silent=false

    # Check if the command ends with -silent
    if [[ "$INPUT" == *"-silent" ]]; then
        silent=true
        INPUT=${INPUT%-silent} # Remove -silent from the command
        INPUT=$(echo "$INPUT" | xargs) # Trim any extra spaces
    fi

    # Process commands
    if [[ "$INPUT" == "exit" ]]; then
        $silent || exit 0
    elif [[ "$INPUT" == "list" ]]; then
        $silent || ls
    elif [[ "$INPUT" == "list A" ]]; then
        $silent || ls -a
    elif [[ "$INPUT" == "list L" ]]; then
        $silent || ls -l
    elif [[ "$INPUT" == "list AL" || "$INPUT" == "list LA" ]]; then
        $silent || ls -al
    elif [[ "$INPUT" == dir* ]]; then
        local directory=$(echo "$INPUT" | sed 's/ //g' | sed 's/-//g' | sed 's/dir//g')
        if cd "$directory" 2>/dev/null; then
            $silent || echo "Changed directory to $(pwd)"
        else
            $silent || echo "Error: Directory '$directory' not found."
        fi
    elif [[ "$INPUT" == "wami" ]]; then
        $silent || pwd
    elif [[ "$INPUT" == "pr "* ]]; then
        local message=${INPUT#pr }
        $silent || echo "$message"
    elif [[ "$INPUT" == "noent" ]]; then
        $silent || echo "Error: No such entity found."
    elif [[ "$INPUT" == "nano "* ]]; then
        local filename=${INPUT#nano }
        $silent || nano "$filename"
    elif [[ "$INPUT" == "vi "* ]]; then
        local filename=${INPUT#vi }
        $silent || vi "$filename"
    else
        $silent || echo "command.${INPUTC}: Not found" | sed 's/-//g'
    fi
}

startupmovie() {
    clear
    echo "    <NEXLANGSHELL>    "
    sleep 0.5
    clear
    echo "    <NEXLANSHEL>    "
    sleep 0.5
    clear
    echo "    <NEXLASHE>    "
    sleep 0.5
    clear
    echo "    <NEXLSH>    "
    sleep 0.5
    clear
    echo "    <NEXS>    "
    sleep 0.5
    clear
    echo "    <NE>    "
    sleep 0.5
    clear
    echo "    <N>    "
    sleep 0.5
    clear
    echo "    <NL>    "
    sleep 0.5
    clear
    echo "   <NLS>    "
    sleep 0.5
    clear
    echo "  <NLS>    "
    sleep 0.5
    clear
    echo " <NLS>    "
    sleep 0.5
    clear
    echo "<NLS>    "
    sleep 0.5
    clear
}

# Start the shell
startupmovie
while true; do
    read -n100 -rp "NLS> " INPUT
    INPUTC=$(echo "$INPUT" | sed 's/ /./g')
    verifyprompt
done
