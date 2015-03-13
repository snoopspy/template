define makelib # $(1)filename, $(2)config
	cd lib && \
	qmake $(1) CONFIG+=$(2) && \
	make && \
	make clean && \
	cd ..
endef

all: debug release app_

update:
	git pull

debug: libfoobar_d libfoobar_gui_d libfoobar_test_d libfoobar_gui_test_d

release: libfoobar libfoobar_gui libfoobar_test libfoobar_gui_test

libfoobar_d:
	$(call makelib,libfoobar.pro,debug)

libfoobar_gui_d:
	$(call makelib,libfoobar_gui.pro,debug)

libfoobar_test_d:
	$(call makelib,libfoobar_test.pro,debug)

libfoobar_gui_test_d:
	$(call makelib,libfoobar_gui_test.pro,debug)

libfoobar:
	$(call makelib,libfoobar.pro,release)

libfoobar_gui:
	$(call makelib,libfoobar_gui.pro,release)

libfoobar_test:
	$(call makelib,libfoobar_test.pro,release)

libfoobar_gui_test:
	$(call makelib,libfoobar_gui_test.pro,release)

app_:
	cd app && qmake && make && make clean && cd ..

clean:
	find -type d -name 'build-*'    -exec rm -r {} \; | true
	find -type f -name '*.o'        -delete
	find -type f -name '*.pro.user' -delete
	find -type f -name 'Makefile*'  -delete
