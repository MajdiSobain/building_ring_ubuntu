gcc -c -fpic ring_vmodbc.c -I $PWD/../../include
gcc -shared -o $PWD/../../lib/libring_odbc.so ring_vmodbc.o -L $PWD/../../lib -lring -L /usr/lib/i386-linux-gnu -lodbc

 
cp ../../lib/libring_odbc.so ../../bin/libring_odbc.so

