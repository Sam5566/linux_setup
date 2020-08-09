# please run this program in $HOME/linux_setup with command "make"
SHELL := /bin/bash
DIR = setup_code
FILES = ${DIR}/*.sh
all:
	@echo "Searching files in ${DIR}...";
	@echo ${FILES};

	@for FILE in ${FILES}; do \
		echo -e "\033[34m Set up $$FILE\033[0m" ; \
		source $${FILE}; \
		echo ........................... ; \
		echo ........................... ; \
		echo ........................... ; \
	done

	@echo ////////////////////////////// ;
	@echo ////////////////////////////// ;
	@echo ////////////////////////////// ;
	@source check.sh

	@echo "Finish all installation--> final reboot[ENTER]";
	@read
	@sudo reboot now
