#!/bin/bash
function celc(){


        tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
          echo "$tc C = $tf F"
}
function farn(){

  tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
        echo "$tf = $tc"

}

echo -e "Enter temp in celc "
read tc

echo -e "enter temp in farn"
read tf
