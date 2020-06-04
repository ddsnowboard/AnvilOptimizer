srcdir = src
builddir = build
bindir = bin
generated_sources = $(srcdir)/items.dart $(srcdir)/enchantments.dart 
sources := $(wildcard $(srcdir)/*.dart) $(generated_sources)
objects := $(builddir)/main.js
markup = $(wildcard $(srcdir)/*.html) $(wildcard $(srcdir)/.css)
markup_objects := $(markup:$(srcdir)/%=$(builddir)/%)

.PHONY: clean

all : $(objects) $(markup_objects)

$(generated_sources) : tools/generateEnchantments.py
	python3 $<

clean : 
	$(RM) -r $(builddir)
	$(RM) -r $(bindir)
	$(RM) $(generated_sources)

$(objects) : $(sources) | $(builddir)
	dart2js -o $(builddir)/main.js $(srcdir)/main.dart

native : $(sources) | $(bindir)
	dart2native -o $(bindir)/main $(srcdir)/calc.dart

$(markup_objects) : $(builddir)/%: $(srcdir)/% | $(builddir)
	ln -s `realpath $<` $@

$(builddir) $(bindir) : 
	mkdir -p $@
