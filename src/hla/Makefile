.PHONY: all clean

SHELL := /bin/zsh


EMPTY :=
SPACE := $(EMPTY) $(EMPTY)
define NEWLINE


endef

TRIM = $(subst $(SPACE),$(EMPTY),$1)


SRCDIR  := .
HLA_CMD := $(HLA) $(HLA_FLAGS) -i:$(SRCDIR) -obj:$(OBJDIR)

define HLA_RULE
$(NEWLINE)
$(strip $1: $2)
	$(HLA_CMD) $$< -x:$$@

BINARIES += $1
OBJECTS  += $3
$(NEWLINE)
endef

SRC_TO_FILE = $(patsubst %.hla,$2%$3,$(notdir $1))
SRC_TO_OBJ  = $(call SRC_TO_FILE,$1,$(OBJDIR)/,.o)
SRC_TO_BIN  = $(call SRC_TO_FILE,$1,$(BINDIR)/,$(EMPTY))
SRC_TO_RULE = $(call HLA_RULE,$(call SRC_TO_BIN,$1),$1,$(call SRC_TO_OBJ,$1))

define RULES
$(foreach source,$(wildcard $(SRCDIR)/*.hla),\
		 $(call SRC_TO_RULE,$(source)))
endef

$(eval $(RULES))

all: $(BINARIES)

clean:
	$(RM) $(BINARIES) $(OBJECTS)
