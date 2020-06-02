all: heap examheap

heap.o: heap.cpp heap.h
	g++ heap.cpp -c 

heap: heap.o
	g++ heap.o -o heap

examheap.o:	examheap.cpp heap.h
	g++ -c examheap.cpp

examheap: heap.o examheap.o
	g++ heap.o examheap.o -o examheap

clean:
	rm examheap heap examheap.o heap.o