EXECUTABLE      := babbys_first
SOURCES         := $(EXECUTABLE).s
OBJECTS         := $(EXECUTABLE).o
ASSEMBLER       ?= as
# ASSEMBLER_FLAGS ?= --x32 -mmnemonic=intel -msyntax=intel -gstabs+ 
ASSEMBLER_FLAGS ?= -msyntax=intel -gstabs+ 
LINKER          ?= ld
LINKER_FLAGS    ?= 
CLEANER         ?= rm
CLEANER_FLAGS   ?= -f


.PHONY: all
all: $(EXECUTABLE)

.PHONY: $(EXECUTABLE)
$(EXECUTABLE): $(OBJECTS)
	$(LINKER) $(LINKER_FLAGS) $^ -o $@

.PHONY: $(EXECUTABLE)
$(OBJECTS): $(SOURCES)
	$(ASSEMBLER) $(ASSEMBLER_FLAGS) $^ -o $@

.PHONY: clean
clean:
	$(CLEANER) $(CLEANER_FLAGS) $(OBJECTS) $(EXECUTABLE)
