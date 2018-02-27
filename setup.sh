
cat <<EOF
 _  _  ____   ___  __  ____  ____    ____   __   ____ 
/ )( \/ ___) / __)/  \(    \(  __)  (  _ \ /  \ / ___)
\ \/ /\___ \( (__(  O )) D ( ) _)    )   /(  O )\___ \ 
 \__/ (____/ \___)\__/(____/(____)  (__\_) \__/ (____/
EOF

echo "Installing basic dependencies"
sudo apt install clang clang-format clang-tidy -y

echo "Installing vscode"
curl -o code.deb -L 'https://go.microsoft.com/fwlink/?LinkID=760868'
sudo apt install ./code.deb -y
rm code.deb
sudo apt install 

echo "Installing vscode extensions"

extensions=(
    "ms-python.python"
    "ms-vscode.cpptools"
    "twxs.cmake"
    "vector-of-bool.cmake-tools"
    "ajshort.ros"
    "DotJoshJohnson.xml"
)

for extension in ${extensions[*]}
do
    echo "  Installing extension $extension"
    code --install-extension $extension
done

echo "Installing Fira Code Fonts"
mkdir -p ~/.local/share/fonts
for type in Bold Light Medium Regular Retina; do
    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true" \
    &> /dev/null;
done

echo "Configuring vscode"
cat > ~/.config/Code/User/settings.json <<EOF
{
    "editor.fontFamily": "Fira Code",
    "editor.fontLigatures": true,
    "editor.fontSize": 16,
    "editor.formatOnSave": true
}
EOF

echo "Done configuring"