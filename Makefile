all: test

install:
	luarocks make

check:
	luarocks lint `find . -name '*.rockspec' -print`
	luacheck --std max+busted src spec

test: check
	busted --verbose spec

coverage: check
	busted --verbose --coverage spec
	luacov-coveralls -i src --dryrun

clean:
	rm -fv luacov.*.out
	rm -fv *.src.rock

.PHONY: clean

# END
