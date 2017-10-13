.PHONY: all clean

all: cpuid

cpuid: cpuid.s
	as -g cpuid.s -o cpuid.o
	# ld -macosx_version_min 10.12 -lSystem cpuid.o -o cpuid
	ld cpuid.o -o cpuid

clean:
	rm cpuid.o cpuid
