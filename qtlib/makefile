all:
	make debug
	make release
	make app_

update:
	git pull

debug: libfoobar_d libfoobar_gui_d

release: libfoobar libfoobar_gui

libfoobar_d:
	cd lib && qmake libfoobar.pro CONFIG+=debug     && make && make clean && cd ..

libfoobar_gui_d:
	cd lib && qmake libfoobar_gui.pro CONFIG+=debug && make && make clean && cd ..

libfoobar:
	cd lib && qmake libfoobar.pro                   && make && make clean && cd ..

libfoobar_gui:
	cd lib && qmake libfoobar_gui.pro               && make && make clean && cd ..

app_:
	cd app && qmake && make && make clean && cd ..

clean:
	find -type d -name 'build-*'    -exec rm -r {} \;
	find -type f -name '*.o'        -delete
	find -type f -name '*.pro.user' -delete
	find -type f -name 'Makefile*'  -delete
