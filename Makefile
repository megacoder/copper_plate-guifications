THEMES	=${HOME}/.purple/guifications/themes

FILES	=background.png theme.xml

H	=44
W	=382

%.png:	%.svg
	rasterizer -d $@ -h ${H} -w ${W} -m image/png $<

.PHONEY: all install uninstall clean clobber distclean

all::	background.png

clean::

distclean clobber:: clean
	${RM} background.png

install:: ${FILES}
	for x in ${FILES}; do						\
		install -D -c -m 0644 $${x} ${THEMES}/copper-plate/$${x};	\
	done

uninstall::
	${RM} -r ${THEMES}/copper-plate
