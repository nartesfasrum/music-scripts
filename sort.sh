#!/bin/bash
    dirs=(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z)
    shopt -s nocasematch

    for file in *
    do
        for dir in "${dirs[@]}"
        do
            if [[ $file =~ ^[$dir] ]]
            then
                mv "$file" "$dir"
                break
            fi
        done
    done
