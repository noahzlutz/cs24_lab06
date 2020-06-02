// heap.cpp
// Diba Mirza

#include "heap.h"
#include <iostream>
using std::cout;

// Pushes a value into the heap, then ensures
// the heap is correctly arranged
void Heap::push(int value){
  if(vdata.empty()){
    vdata.push_back(value);
  }else{
    std::vector<int>::iterator i = vdata.begin();
    for(i; *i < value; i++);
    vdata.insert(i, value);
  }
}

// Pops the minimum value off the heap
// (but does not return it), then ensures
// the heap is correctly arranged 
void Heap::pop(){
  if(!vdata.empty()){
    std::vector<int>::iterator i = vdata.begin();
    vdata.erase(i);
  }
}

// Returns the minimum element in the heap
int Heap::top(){
  std::vector<int>::iterator i = vdata.begin();
  return *i;
}

// Returns true if the heap is empty, false otherwise
bool Heap::empty(){
  if(vdata.empty()){
    return true;
  }else{
    return false;
  }
}
    
