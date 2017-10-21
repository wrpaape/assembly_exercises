.PHONY: all clean

all: cpuid

cpuid: cpuid.s
	as -gstabs+ cpuid.s -o cpuid.o
	ld cpuid.o -o cpuid

clean:
	rm cpuid.o cpuid
