gcc -c -fpic ring_opengl21.c -I $PWD/../../../include
gcc -shared -o $PWD/../../../lib/libring_opengl21.so ring_opengl21.o -L $PWD/../../lib -lring -L /usr/lib/i386-linux-gnu -lGL -lGLU -lglut

 
cp ../../../lib/libring_opengl21.so ../../../bin/libring_opengl21.so

