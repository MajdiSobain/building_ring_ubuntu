gcc -c -fpic ring_opengl32.c -I $PWD/../../../include
gcc -shared -o $PWD/../../../lib/libring_opengl32.so ring_opengl32.o -L $PWD/../../../lib -lring -L /usr/lib/i386-linux-gnu -lGL -lGLU -lglut

 
cp ../../../lib/libring_opengl32.so ../../../bin/libring_opengl32.so

