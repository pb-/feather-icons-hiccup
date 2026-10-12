feather-version=4.29.2

icons.clj: icons
	bb build.clj > icons.clj

icons:
	curl --follow https://github.com/feathericons/feather/archive/refs/tags/v$(feather-version).tar.gz | tar xz --wildcards '*.svg' --strip-components=1

clean:
	rm -rf icons icons.clj
.PHONY: clean
