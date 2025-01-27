verifyprompt() {
    if [[ "$INPUT" == "exit" ]]; then
        exit 0
    elif [[ "$INPUT" == "list" ]]; then
        ls
    elif [[ "$INPUT" == "list A" ]]; then
        ls -a
    elif [[ "$INPUT" == "list L" ]]; then
        ls -l
    elif [[ "$INPUT" == "list AL" || "$INPUT" == "list LA" ]]; then
        ls -al
    elif [[ "$INPUT" == "dir"* ]]; then
        cd $(echo $INPUT|sed 's/ //g'|sed 's/-//g'|sed 's/dir//g')
    elif [[ "$INPUT" == "wami" ]]; then
        pwd
    else
        echo "command.$INPUTC: Not found"|sed 's/-//g'
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
startupmovie
while true; do
    read -n100 -rp "NLS> " INPUT
    INPUTC=$(echo "$INPUT"|sed 's/ /./g')
    verifyprompt
done

