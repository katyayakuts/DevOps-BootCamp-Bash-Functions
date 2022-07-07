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
                i=$(echo $i | sed 's/,//g')
                if [[ ${#i} -lt $sh ]]
                then
                sh=${#i}
                fi
        done

        for i in ${arr[@]}
        do
                i=$(echo $i | sed 's/,//g')
                if [[ ${#i} -eq $sh ]]
                then
                echo "$(echo $i | sed 's/,//g')"
                fi
        done
}

print_log(){

        str=$@
        echo "[$(date +%F' '%H:%M)] $str"
}



# Put your code here
