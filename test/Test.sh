cd ..
make re
cd test
gcc -o libasmtest ./../libfts.a main.c
./libasmtest
