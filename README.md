# [UBUNTU] Building Ring Programming Language with library relative linking

To make ring be able to use its extensions from the same directory it is located in, or other relative paths use these prepared building scripts.

The building steps are the same steps that have been explained in Ring Language Github page or Ring documentation. BUT you just need to merge these scripts to the ring directory tree as soon as you get ring source code.

**Note:** Its very important to grant these scripts execution permissions before building process

# Running Ring after building

After building Ring using these scripts you have two choices to run it.

(1) You can run it directory from the same directory its located in by using (rnote.sh) script

	./rnote.sh

(2) You can run it as global command line program(Previous method of running Ring). You have to copy ring binary, library and its related extensions libraries to (/usr/bin) and (/usr/lib) using this script 

	sudo ./bin/install.sh




