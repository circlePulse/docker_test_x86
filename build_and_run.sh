#!/bin/bash

nasm -f elf64 hello.asm -o hello.o
x86_64-elf-ld hello.o -o hello
docker build  -t hello-x86 .
docker run  --rm hello-x86