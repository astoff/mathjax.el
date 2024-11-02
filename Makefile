EMACS ?= emacs

math2svg.js: math2svg/package-lock.json math2svg/*.js
	cd math2svg && npm run build

deps:
	cd math2svg && npm install

clean:
	rm -rf math2svg.js* *.elc math2svg/node_modules

%.elc: %.el
	$(EMACS) -Q --batch -L . -f batch-byte-compile $<

.PHONY: deps clean
