.PHONY: all clean

export BINDIR := $(CURDIR)/bin
export OBJDIR := $(CURDIR)/obj
export SRCDIR := $(CURDIR)/src
MFLAGS 	      := -j5 LAST=550

all clean:
	$(MAKE) $(MFLAGS) -C $(SRCDIR) $@
