all: heap examheap

heap.o: heap.cpp
	g++ -c heap.cpp

heap: heap.o
	g++ -o heap heap.o

examheap.o:	examheap.cpp heap.cpp
	g++ -c examheap.cpp heap.cpp

examheap: heap.o examheap.o
	g++ -o examheap heap.o examheap.o

clean:
	rm examheap heap examheap.o heap.o