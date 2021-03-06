BUILDER	 := ./builder.js
JSLINT   := /usr/local/bin/gjslint
FIX_STYLE := /usr/local/bin/fixjsstyle
JSLINT_PARAMS := --exclude_files model.js --custom_jsdoc_tags public,static --recurse lib/

dist: install-dep jslint
	$(BUILDER) dist

jslint: 
	$(JSLINT) $(JSLINT_PARAMS)

fixstyle: 
	$(FIX_STYLE) $(JSLINT_PARAMS)

install-dep: 
	npm install

.PHONY: jslint fixstyle dist install

