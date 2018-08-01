#!/bin/bash

function usage {
    echo "Usage:"
    echo "docker run -v \$PWD:/compile -w /compile registry.r-99.com/docker/ttf2woff2 [compress|decompress|info] file.[ttf|woff2]"
}

function compress {
    woff2_compress $1
}

function decompress {
    woff2_decompress $1
}

function info {
    woff2_info $1
}

case $1 in
    info)
    info $2
    ;;

    compress)
    echo "Compressing $2:"
    compress $2
    ;;

    decompress)
    echo "Decompressing $2:"
    decompress $2
    ;;

    *)
    usage
    ;;
esac