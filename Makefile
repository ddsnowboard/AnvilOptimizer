srcdir = src
objdir = build
generated_sources = $(srcdir)/items.dart $(srcdir)/enchantments.dart 
sources := $(wildcard $(srcdir)/*.dart) $(generated_sources)
objects := $(objdir)/main.js
markup = $(wildcard $(srcdir)/*.html) $(wildcard $(srcdir)/.css)
markup_objects := $(markup:$(srcdir)/%=$(objdir)/%)

.PHONY: clean

all : $(objects) $(markup_objects)

$(generated_sources) : 
	python3 tools/generateEnchantments.py

clean : 
	$(RM) -r $(objdir)
	$(RM) $(generated_sources)

$(objects) : $(sources) | $(objdir)
	dart2js -o $(objdir)/main.j $(srcdir)/main.dart

$(markup_objects) : $(objdir)/%: $(srcdir)/% | $(objdir)
	cp $< $@

$(objdir) : 
	mkdir -p $@

print : 
	@echo $(markup_objects)
	@echo $(objects)
