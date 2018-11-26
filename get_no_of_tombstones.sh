# getting lines related to tombstones info from db and redirect relevent lines to a tmp file
cqlsh -u USERNAME -p PASSWORD -e "use DB_NAME; tracing on; select COUNT(*) from TABLE_NAME;" | grep 'tombstone cells' > tombstones_tmp

# call a python script to get number of tombstones
python3 get_no_of_tombstones.py
