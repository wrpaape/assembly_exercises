.PHONY: all clean

all: cpuid2

cpuid2: cpuid2.s
	as -gstabs --32 cpuid2.s -o cpuid2.o
	ld cpuid2.o -lc -o cpuid2

clean:
	rm cpuid2.o cpuid2
