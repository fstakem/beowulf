# --------------------------------------------------------------------------------
#
#   create_er_diagram.sh
#   By: Fredrick Stakem
#   Date: 3.17.16
#   Purpose: Script to create ER diagram of DB with rails-erd
#
# --------------------------------------------------------------------------------


# Vars
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Script setup
printf "Current dir: %s" "$script_dir\n"

# Create diagram
printf "Creating ER diagram...\n"
rake erd title="DB Diagram" notation="bachman" orientation="horizontal" attributes="foreign_keys, primary_keys, timestamps, content" filename="er"
rake erd filetype="dot" title="DB Diagram" notation="bachman" orientation="horizontal" attributes="foreign_keys, primary_keys, timestamps, content" filename="er"
dot -Tpng er.dot -o er.png
rm er.dot
printf "Diagram create.\n "