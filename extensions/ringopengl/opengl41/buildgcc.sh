gcc -c -fpic ring_opengl41.c -I $PWD/../../../include
gcc -shared -o $PWD/../../../lib/libring_opengl41.so ring_opengl41.o -L $PWD/../../../lib -lring -L /usr/lib/i386-linux-gnu -lGL -lGLU -lglut

cp ../../../lib/libring_opengl41.so ../../../bin/libring_opengl41.so


