
#!/bin/bash

echo -e " enter the value "
read -r n
i=1
for ((i=1;i<=n;i++))
do
r=$((i*i))
echo $r
done
