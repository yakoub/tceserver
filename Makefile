deploy:
	cp ../server/tce_screens.sh .
	cp ../server/etlded_tce* .
	cp ../server/etmain/tce_* etmain
	cp ../server/etmain/maptce* etmain
sync:
	cp tce_screens.sh ../server/
	cp etlded_tce* ../server/
	cp etmain/tce_* ../server/etmain
	cp etmain/maptce* ../server/etmain
