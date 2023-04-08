# ROM_SingleAddress

Memory design is important while implementing systems.

We know that there are basically two types of memories: 

ROM and RAM. 

The organization of the memory would depend upon a particular application.

Here I have implemented a Single Address ROM Design which have 8 locations of size 64 bits.

It is organized as 8 × 64 bits, and can be read byte-wise.

‘romq’ is declared as the module at the beginning and the inputs/outputs listed.
This is followed by declaring the I/Os, registers, and wires as shown in the code.
Locations ‘loc0’ to ‘loc7’ are assigned the ROM data, each of size 64 bits. In the
‘always’ block that follows, these locations are assigned to the memory, ‘mem [0]’
to ‘mem [7]’. The next ‘always’ block separates the 64 bits data in the ‘mem’ as
bytes. MSB of ‘mem [a]’, i.e., ‘mem_data [63:56]’, is assigned as the LSB byte,‘byte_data [0]’. 
Similar explanation holds good for other bytes. Finally, the ‘data_byte’ is registered as ‘d’.
