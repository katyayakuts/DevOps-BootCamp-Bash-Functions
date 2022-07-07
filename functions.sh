#!/bin/bash

pow() {
        zh=1

        var1=$1
        var2=$2

        while [ $var2 -ge 1 ]
        do
                zh=$[$zh*$var1]
                ((var2--))
        done
        echo $zh
}


shortest() {

        arr=("$@")
        sh=99999
        for i in ${arr[@]}
        do
                if [[ ${#i} -lt $sh ]]
                then
                 sh=${#i}
                fi
        done

        for i in ${arr[@]}
        do
                if [[ ${#i} -eq $sh ]]
                then
                echo "$i"
                fi
        done
}

print_log(){

        str=$@
        echo "[$(date +%F' '%T)] $str"
}


# Put your code here
