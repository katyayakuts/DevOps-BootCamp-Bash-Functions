#!/bin/bash

pow() {
        zh=1
        while [ $var2 -ge 1 ]
        do
                zh=$[$zh*$var1]
                ((var2--))
        done
        echo $zh
}

#var1=$1
#var2=$2
#pow


shortest() {

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

#arr=("$@")
#shortest

print_log(){
        echo "[$(date +%F' '%T)] -> $str"

}

#str=$@
#print_log

# Put your code here
