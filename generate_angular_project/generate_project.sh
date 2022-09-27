#!/bin/bash
# This script generates a project angular
if [ -z "$1" ]; then
    workdir=app
else
    workdir=$1
fi

function generate_project(){
    docker run --rm -it -v $(pwd)/$1:/$1 node:16.17.1-slim sh -c "npm install -y -g @angular/cli
    echo 'Generating project$1...'
    ng new $1 --routing --style=css --skip-git --defaults=false
    # cd $1
    # echo 'Installing dependencies...'
    # npm install
    # echo 'Installing bootstrap...'
    # npm install bootstrap --save
    # echo 'Installing jquery...'
    # npm install jquery --save
    # echo 'Installing popper.js...'
    # npm install popper.js --save
    # echo 'Installing font-awesome...'
    # npm install font-awesome --save
    # echo 'Installing angular2-flash-messages...'
    # npm install angular2-flash-messages --save
    # echo 'Installing angular2-jwt...'
    # npm install angular2-jwt --save
    # echo 'Installing angular2-moment...'
    # npm install angular2-moment --save
    # echo 'Installing angular2-toaster...'
    # npm install angular2-toaster --save
    # echo 'Installing angular2-uuid...'
    # npm install angular2-uuid --save
    # echo 'Installing angularfire2...'
    # npm install angularfire2 --save
    # echo 'Installing firebase...'
    # npm install firebase --save
    # echo 'Installing ngx-bootstrap...'
    # npm install ngx-bootstrap --save
    # echo 'Installing ngx-pagination...'
    # npm install ngx-pagination --save
    # echo 'Installing ngx-quill...'
    # npm install ngx-quill --save
    # echo 'Installing ngx-spinner...'
    # npm install ngx-spinner --save
    # echo 'Installing ngx-toastr...'
    # npm install ngx-toastr --save
    # echo 'Installing ngx-clipboard...'
    # npm install ngx-clipboard --save
    # echo 'Installing ngx-cookie-service...'
    # npm install ngx-cookie-service --save
    # echo 'Installing ngx-owl-carousel...'
    # npm install ngx-owl-carousel --save
    # echo 'Installing ngx-owl-carousel-o...'
    # npm install ngx-owl-carousel-o --save
    # echo 'Installing ngx-owl-carousel-o2...'
    # npm install ngx-owl-carousel-o2 --save
    # echo 'Installing ngx-owl-carousel2...'
    # npm install ngx-owl-carousel2 --save
    # echo 'Installing ngx-owl-carousel3...'
    # npm install ngx-owl-carousel3 --save
    # echo 'Installing ngx-owl-carousel4...'
    # npm install ngx-owl-carousel4 --save
    # echo 'Installing ngx-owl-carousel5...'
    # npm install ngx-owl-carousel5 --save
    # echo 'Installing ngx-owl-carousel6...'
    # npm install ngx-owl-carousel6 --save
    # echo 'Installing ngx-owl-carousel'"
}

## Comprobar si un directorio existe o esta vacio
if [ -d "./$workdir" ]; then
    if [ "$(ls -A ./$workdir)" ]; then
        echo "Ya existe un proyecto en el directorio"
    else
        generate_project $1
    fi
else
    generate_project $workdir
fi
