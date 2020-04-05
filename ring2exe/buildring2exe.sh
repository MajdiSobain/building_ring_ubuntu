../bin/ring ring2exe.ring ring2exe.ring
../bin/ring ring2exe.ring folder2qrc.ring 
./cleartemp.sh

cp ring2exe $PWD/../bin/ring2exe 
sudo chmod +x $PWD/../bin/ring2exe 
cp folder2qrc $PWD/../bin/folder2qrc 
sudo chmod +x $PWD/../bin/folder2qrc 

if [ -f ../lib/libring.dylib ];
then
echo "`pwd`/bin/ring2exe \$1 \$2 \$3 \$4 \$5 \$6 \$7" > /usr/local/bin/ring2exe
chmod +x /usr/local/bin/ring2exe
echo "`pwd`/folder2qrc \$1 \$2 \$3 \$4 \$5 \$6 \$7" > /usr/local/bin/folder2qrc
chmod +x /usr/local/bin/folder2qrc
fi

if [ -f ../lib/libring.so ];
then
sudo bash -c 'echo "`pwd`/../bin/ring2exe \$1 \$2 \$3 \$4 \$5 \$6 \$7" > /usr/bin/ring2exe' 
sudo chmod +x /usr/bin/ring2exe
sudo bash -c 'echo "`pwd`/../bin/folder2qrc \$1 \$2 \$3 \$4 \$5 \$6 \$7" > /usr/bin/folder2qrc'
sudo chmod +x /usr/bin/folder2qrc
fi


