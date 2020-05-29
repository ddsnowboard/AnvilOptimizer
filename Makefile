srcdir = src
objdir = build
# sources := $(wildcard $(srcdir)/*.dart)
sources := $(srcdir)/main.dart
objects := $(sources:$(srcdir)/%.dart=$(objdir)/%.js)
markup = $(wildcard $(srcdir)/*.html) $(wildcard $(srcdir)/.css)
markup_objects := $(markup:$(srcdir)/%=$(objdir)/%)

.PHONY: clean

all : $(objects) $(markup_objects)

clean : 
	$(RM) -r $(objdir)

$(objects) : $(objdir)/%.js: $(srcdir)/%.dart | $(objdir)
	dart2js -o $@ $<

$(markup_objects) : $(objdir)/%: $(srcdir)/% | $(objdir)
	cp $< $@

$(objdir) : 
	mkdir -p $@

print : 
	@echo $(markup_objects)
	@echo $(objects)
