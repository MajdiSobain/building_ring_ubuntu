gcc -c -fpic ring_opengl12.c -I $PWD/../../../include
gcc -shared -o $PWD/../../../lib/libring_opengl12.so ring_opengl12.o -L $PWD/../../../lib -lring -L /usr/lib/i386-linux-gnu -lGL -lGLU -lglut

 
cp ../../../lib/libring_opengl12.so ../../../bin/libring_opengl12.so

