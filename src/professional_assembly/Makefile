TARGETS       := cpuid cpuid2 movtest1 movtest2
ALL_TARGETS   := $(patsubst %,_all_%,$(TARGETS))
CLEAN_TARGETS := $(patsubst %,_clean_%,$(TARGETS))

.PHONY: all $(ALL_TARGETS)
all: $(ALL_TARGETS)
$(ALL_TARGETS):
	$(MAKE) $(MFLAGS) -C $(patsubst _all_%,%,$@) all

.PHONY: clean $(CLEAN_TARGETS)
clean: $(CLEAN_TARGETS)
$(CLEAN_TARGETS):
	$(MAKE) $(MFLAGS) -C $(patsubst _clean_%,%,$@) clean
