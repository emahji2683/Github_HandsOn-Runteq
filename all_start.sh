#!/bin/bash
./start.sh
./make_database.sh	
./make_json.sh
./make_Proc.sh
./start02.sh

gnome-terminal -- bash -c "./start03.sh; exec bash"

