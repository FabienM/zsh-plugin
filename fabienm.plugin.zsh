alias ping='prettyping'
alias cat='bat'
alias remark='curl -o slides.html https://gist.githubusercontent.com/FabienM/5a41651a24ce5999b773fd54a24d53db/raw/2cfa7e4361a97934cc63e19caaed5d4f36ab0d3a/remark-boilerplate.html'

function plouf {
    filename=$@
    blob=`gzip -c $filename | base64 -w 0`
    unplouf="echo $blob | base64 -d | gunzip > $filename"
    echo $unplouf
    echo $unplouf | xcopy
}

function gi() { curl -L -s https://www.gitignore.io/api/\$@ | tail -n +4 | head -n -2 ;}
