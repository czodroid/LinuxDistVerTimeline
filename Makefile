# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 12 December 2021
# Last Modified: Friday 13 January 2023, 13:58
# $Id:$
# Edit Time: 0:18:26
# Description:
#
# Copyright: (C) 2021-2023 Olivier Sirol <czo@free.fr>

DATE = `date +%Y-%m-%d`

all: svg png
	@echo "<- all done!"

svg:
	gnuclad ldvt.csv ldvt-$(DATE).svg ldvt.conf
	@echo "<- svg done!"

png: svg
	convert ldvt-$(DATE).svg  ldvt-$(DATE).png
	@echo "<- png done!"

clean:
	rm -f ldvt*.svg  ldvt*.png
	@echo "<- clean done!"


