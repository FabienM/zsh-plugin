alias remark='curl -o slides.html https://raw.githubusercontent.com/gnab/remark/develop/boilerplate-remote.html'

function plouf {
    filename=$@
    blob=`gzip -c $filename | base64 -w 0`
    unplouf="echo $blob | base64 -d | gunzip > $filename"
    echo $unplouf
    echo $unplouf | xcopy
}

function gi() { curl -L -s https://www.gitignore.io/api/\$@ | tail -n +4 | head -n -2 ;}
