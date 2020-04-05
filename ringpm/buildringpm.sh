ring2exe ringpm.ring
./cleartemp.sh

cp ringpm $PWD/../bin/ringpm 
sudo chmod +x $PWD/../bin/ringpm 

if [ -f ../lib/libring.dylib ];
then
echo "`pwd`/ringpm \$1 \$2 \$3 \$4 \$5 \$6 \$7" > /usr/local/bin/ringpm
chmod +x /usr/local/bin/ringpm
fi

if [ -f ../lib/libring.so ];
then
sudo bash -c 'echo "`pwd`/../bin/ringpm \$1 \$2 \$3 \$4 \$5 \$6 \$7" > /usr/bin/ringpm' 
sudo chmod +x /usr/bin/ringpm
fi


