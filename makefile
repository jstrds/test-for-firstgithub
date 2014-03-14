#=========================================================#
#  ____ _   _ ____  _____ ____   _____ ____               #
# / ___| | | |  _ \| ____/ ___| |  ___| ___|              #
#| |   | |_| | |_) |  _|| |     | |_  |___ \              #
#| |___|  _  |  _ <| |__| |___  |  _|  ___) |             #
# \____|_| |_|_| \_\_____\____| |_|   |____/              #
#                                                         #
#                                                         #
#F5 Benchmarking Hello World on Github                    #
#Author: Justin Richardson                                #
#Version: 00.00.003                                       #
#Description: This document is a makefile for the         # 
#    test project on GitHub for our applications          #
#=========================================================#

CC=gcc
CFLAGS= -c -Wall -g
LFLAGS= -g

#basic build
all: debug release

debug: debug.o
	$(CC) $(LFLAGS) debug/debug.o -o bin/hello_world_debug

debug.o: src/hello_world.c
	$(CC) -O0 $(CFLAGS)  src/hello_world.c -o debug/debug.o

release: release.o
	$(CC) $(LFLAGS) release/release.o -o bin/hello_world

release.o: src/hello_world.c
	$(CC) -O3 $(CFLAGS) src/hello_world.c -o release/release.o

clean:
	rm release/*.o
	rm debug/*.o
	rm bin/*

