CC     := gcc
CFLAGS := -m34

.PHONY: all
all: scratch scratch.s

scratch: scratch.o

scratch.o: scratch.s

EXECUTABLE      := scratch
SOURCES         := $(EXECUTABLE).c
ASSEMBLIES      := $(EXECUTABLE).s
OBJECTS         := $(EXECUTABLE).o
COMPILER        ?= gcc
# COMPILER_FLAGS  ?= -m32 -O0 -S
COMPILER_FLAGS  ?= -m32 -O3 -S
ASSEMBLER       ?= as
ASSEMBLER_FLAGS ?= --32 -gstabs+ 
LINKER          ?= ld
LINKER_FLAGS    ?= -m elf_i386 --entry=main --dynamic-linker=/lib/ld-linux.so.2 -lc
CLEANER         ?= rm
CLEANER_FLAGS   ?= -f


.PHONY: all
all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(LINKER) $(LINKER_FLAGS) $^ -o $@

$(OBJECTS): $(ASSEMBLIES)
	$(ASSEMBLER) $(ASSEMBLER_FLAGS) $^ -o $@

$(ASSEMBLIES): $(SOURCES)
	$(COMPILER) $(COMPILER_FLAGS) $^ -o $@

.PHONY: clean
clean:
	$(CLEANER) $(CLEANER_FLAGS) $(ASSEMBLIES) $(OBJECTS) $(EXECUTABLE)
