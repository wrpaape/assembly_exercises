EXECUTABLE      := paritytest
SOURCES         := $(EXECUTABLE).s
OBJECTS         := $(EXECUTABLE).o
ASSEMBLER       ?= as
ASSEMBLER_FLAGS ?= --32 -gstabs+ 
LINKER          ?= ld
LINKER_FLAGS    ?= -m elf_i386 --dynamic-linker=/lib/ld-linux.so.2 -lc
CLEANER         ?= rm
CLEANER_FLAGS   ?= -f


.PHONY: all
all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(LINKER) $(LINKER_FLAGS) $^ -o $@

$(OBJECTS): $(SOURCES)
	$(ASSEMBLER) $(ASSEMBLER_FLAGS) $^ -o $@

.PHONY: clean
clean:
	$(CLEANER) $(CLEANER_FLAGS) $(OBJECTS) $(EXECUTABLE)
