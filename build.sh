pandoc -t revealjs -s -o presentation.html presentation.md \
    --highlight-style zenburn

tar czf tutorial.tar tutorial
