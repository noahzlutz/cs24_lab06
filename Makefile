all: examheap

heap.o: heap.cpp heap.h
	g++ heap.cpp -c 

examheap.o:	examheap.cpp heap.h
	g++ -c examheap.cpp

examheap: heap.o examheap.o
	g++ heap.o examheap.o -o examheap

clean:
	rm examheap examheap.o heap.o