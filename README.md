atmega328p-asm-disassemble
==========================
### Hex Structure
```
The structure of an Atmega328P hex file follows the Intel Hex format, which is a common format for representing binary data in ASCII form. The hex file contains records that represent different sections of the program memory (flash), data memory (RAM), and other memory regions of the microcontroller.

Each record in the hex file consists of several fields:

Start Code: The start code is a colon character (':') indicating the beginning of a record.

Byte Count: The byte count field specifies the number of bytes in the data field (hexadecimal value from 00 to FF).

Address: The address field represents the starting address of the data being described by the record (hexadecimal value from 0000 to FFFF).

Record Type: The record type field indicates the type of record. The most common types are:

00: Data record. Contains data to be programmed into the microcontroller's memory.
01: End of File record. Indicates the end of the hex file.
02: Extended Segment Address record. Specifies the upper 16 bits of the data address.
04: Extended Linear Address record. Specifies the upper 16 bits of the data address.
05: Start Linear Address record. Specifies the execution start address for the microcontroller.
Data: The data field contains the actual data bytes encoded in hexadecimal format.

Checksum: The checksum field is a two-digit hexadecimal value that represents the checksum of the record. It is used to verify the integrity of the record.
```
