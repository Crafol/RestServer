### VALA-REST
# vim: tabstop=4:softtabstop=4:shiftwidth=4:noexpandtab

PKGS= \
	--pkg gee-0.8 \
	--pkg libsoup-2.4 \
	--pkg glib-2.0 \
	--pkg posix

CFLAGS= \
	`pkg-config gee-1.0 --cflags` \
	`pkg-config libsoup-2.4 --cflags` \
	`pkg-config glib-2.0 --cflags`

SOURCES= \
	ValaRestSimple.vala \
	RestServer.vala

all: clean ValaRestSimple

clean:
	rm -f ValaRestSimple ValaRestSimple.c ValaRestSimple.h

ValaRestSimple:
	@echo "Building $@ ... "
	valac $(PKGS) $(SOURCES)
	#gcc -o $@ -c ValaRestSimple.c $(CFLAGS)
