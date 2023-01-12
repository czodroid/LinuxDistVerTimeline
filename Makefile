# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 12 January 2023
# Last Modified: Thursday 12 January 2023, 22:15
# $Id:$
# Edit Time: 0:11:37
# Description:
#      Makefile:
#      $@ Le nom de la cible
#      $< Le nom de la première dépendance
#      $^ La liste des dépendances
#      $? La liste des dépendances plus récentes que la cible
#      $* Le nom du fichier sans suffixe
#
# Copyright: (C) 2023 Olivier Sirol <czo@free.fr>

DATE = `date "+Y"`

all: svg png
	@echo "<- all done!"

svg: ldt.csv ldt.conf
	gnuclad ldt.csv ldt-$(DATE).svg ldt.conf
	@echo "<- svg done!"

png: svg
	convert ldt-$(DATE).svg  ldt-$(DATE).png
	@echo "<- svg done!"

clean:
	rm -f ldt*.svg  ldt*.png
	@echo "<- clean done!"


